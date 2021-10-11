using CUDA.WMMA

map_ptx_to_jl_frag = Dict(
                                "u8"  => reinterpret(Int32, UInt8(42) * ones(UInt8, 4))[1],
                                "s8"  => reinterpret(Int32, UInt8(42) * ones(UInt8, 4))[1],
                                "u32" => UInt32(42),
                                "s32" => Int32(42),
                                "f16" => ntuple(i -> VecElement{Float16}(42), 2),
                                "f32" => Float32(42)
                                )  
################################################################################

@testset "LLVM intrinsics" begin
    @testset "llvm_wmma_load" begin
        @testset "$(mat)_$(layout)_$(shape)$(addr_space)_$(elem_type)" for op in CUDA.WMMA.all_ldst_ops,
            layout in ["row", "col"],
            shape in op[1],
            mat in op[2],
            elem_type in op[3],
            addr_space in ["", "_global", "_shared"],
            stride in ["stride"]

            if mat == "d"
                continue
            end

            # Type-dependent variables
            array_ty = CUDA.WMMA.map_ptx_to_jl_array[elem_type]
            expected = map_ptx_to_jl_frag[elem_type]
            
            # Address-space dependent variables
            do_shared_test = (addr_space == "_shared")

            # Get the function name
            func = Symbol("llvm_wmma_load_$(mat)_$(layout)_$(shape)$(addr_space)_stride_$(elem_type)")

            input      = array_ty(42) * ones(array_ty, (16, 16))
            input_dev  = CuArray(input)
            result     = Array{Bool}(undef, 1)
            result_dev = CuArray(result)

            @eval @inbounds function kernel(input_ptr, result_dev)
                if $do_shared_test
                    input_shared = CuStaticSharedArray($array_ty, 256)
                    fill!(input_shared, 42)

                    data = $func(pointer(input_shared), 16)
                else
                    data = $func(input_ptr, 16)
                end

                result_dev[1] = all(val -> val == $expected, data)

                return
            end

            # FIXME: make the intrinsics dispatch on the address-space
            #        (but how to test AS.Generic then, since CuArray adapts to a global ptr?)
            input_ptr = if addr_space == ""
                reinterpret(Core.LLVMPtr{array_ty,AS.Generic}, pointer(input_dev))
            elseif addr_space == "_global"
                reinterpret(Core.LLVMPtr{array_ty,AS.Global}, pointer(input_dev))
            else
                nothing
            end

            @cuda threads=32 kernel(input_ptr, result_dev)
            @test all(Array(result_dev))
        end
    end

    @testset "llvm_wmma_store" begin
       @testset "$(mat)_$(layout)_$(shape)$(addr_space)_$(elem_type)" for ops in CUDA.WMMA.all_ldst_ops,
            layout in ["row", "col"],
            mat in ops[2],
            shape in ops[1],
            elem_type in ops[3],
            addr_space in ["", "_global", "_shared"],
            stride in ["stride"]
            
            # Skip all but d matrices
            if mat != "d"
                continue
            end

            # Type-dependent variables
            array_ty = CUDA.WMMA.map_ptx_to_jl_array[elem_type]
            data = elem_type == "f16" ? ntuple(i -> ntuple(j -> VecElement{Float16}(42), 2), 4) : ntuple(i -> 42, 8)

            # Get the function name
            func = Symbol("llvm_wmma_store_$(mat)_$(layout)_$(shape)$(addr_space)_stride_$(elem_type)")

            # Address-space dependent variables
            do_shared_test = (addr_space == "_shared")

            output     = Array{array_ty}(undef, (16, 16))
            output_dev = CuArray(output)

            @eval function kernel(output_dev, output_ptr)
                if $do_shared_test
                    shared_mem = CuStaticSharedArray($array_ty, 256)
                    $func(pointer(shared_mem), $data, 16)

                    for i = 1:256
                        @inbounds output_dev[i] = shared_mem[i]
                    end
                else
                    $func(output_ptr, $data, 16)
                end

                return
            end

            # FIXME: make the intrinsics dispatch on the address-space
            #        (but how to test AS.Generic then, since CuArray adapts to a global ptr?)
            output_ptr = if addr_space == ""
                reinterpret(Core.LLVMPtr{array_ty,AS.Generic}, pointer(output_dev))
            elseif addr_space == "_global"
                reinterpret(Core.LLVMPtr{array_ty,AS.Global}, pointer(output_dev))
            else
                nothing
            end

            @cuda threads=32 kernel(output_dev, output_ptr)
            @test all(Array(output_dev) .== 42.0)
        end
    end
    @testset "llvm_wmma_mma" begin
        @testset "$(a_layout)_$(b_layout)_$(shape), a/b: $(ab_elem_type), d: $(d_elem_type) c: $(c_elem_type)" for ops in CUDA.WMMA.all_wmma_ops,
            a_layout in ["row", "col"],
            b_layout in ["row", "col"],
            shape in ops[1],
            ab_elem_type in ops[2],
            d_elem_type in ops[4],
            c_elem_type in ops[3]

            # Type-dependent variables
            d_ty  = CUDA.WMMA.map_ptx_to_jl_array[d_elem_type]
            c_ty  = CUDA.WMMA.map_ptx_to_jl_array[c_elem_type]
            ab_ty = CUDA.WMMA.map_ptx_to_jl_array[ab_elem_type]

            # Get the function names
            lda_func = getfield(Main, Symbol("llvm_wmma_load_a_$(a_layout)_$(shape)_global_stride_$(ab_elem_type)"))
            ldb_func = getfield(Main, Symbol("llvm_wmma_load_b_$(b_layout)_$(shape)_global_stride_$(ab_elem_type)"))
            ldc_func = getfield(Main, Symbol("llvm_wmma_load_c_col_$(shape)_global_stride_$(c_elem_type)"))
            # Account for half and int/subint mma different naming conventions
            # Int/subint mma functions are distinguished by the a/b element type
            mma_sym = d_ty == Int32 ? Symbol("llvm_wmma_mma_$(a_layout)_$(b_layout)_$(shape)_$(ab_elem_type)") :
                                      Symbol("llvm_wmma_mma_$(a_layout)_$(b_layout)_$(shape)_$(d_elem_type)_$(c_elem_type)")
            mma_func = getfield(Main, mma_sym)               
            std_func = getfield(Main, Symbol("llvm_wmma_store_d_col_$(shape)_global_stride_$(d_elem_type)"))

            # Generate input matrices
            a     = rand(ab_ty, (16, 16))
            a_dev = CuArray(a)
            b     = rand(ab_ty, (16, 16))
            b_dev = CuArray(b)
            c     = rand(c_ty, (16, 16))
            c_dev = CuArray(c)

            # Reserve space for result
            d     = Array{d_ty}(undef, (16, 16))
            d_dev = CuArray(d)

            # Matrix MAC kernel (D = A * B + C)
            function kernel(a_dev, b_dev, c_dev, d_dev)
                a_frag = lda_func(pointer(a_dev), 16)
                b_frag = ldb_func(pointer(b_dev), 16)
                c_frag = ldc_func(pointer(c_dev), 16)

                d_frag = mma_func(a_frag, b_frag, c_frag)

                std_func(pointer(d_dev), d_frag, 16)
                return
            end

            @cuda threads=32 kernel(a_dev, b_dev, c_dev, d_dev)

            new_a = (a_layout == "col" ? a : transpose(a))
            new_b = (b_layout == "col" ? b : transpose(b))
            # Alter test depending on a/b element Type
            if ab_ty == Float16
                @test new_a * new_b + c ≈ Array(d_dev) rtol=Base.rtoldefault(Float16)
            else # Cast a and b to prevent UInt8 rollover of resultant data            
                @test Int32.(new_a) * Int32.(new_b) + c == Array(d_dev)
            end
        end
    end
end

################################################################################

@testset "Flattening/unflattening" begin
    @testset "Flattening" begin
        @test WMMA.flatten(5)                                                                  == (5,)
        @test WMMA.flatten(5.0)                                                                == (5.0,)
        @test WMMA.flatten(VecElement{Float16}(5))                                             == (Float16(5),)
        @test WMMA.flatten(ntuple(i -> i, 8))                                                  == ntuple(i -> i, 8)
        @test WMMA.flatten(ntuple(i -> VecElement{Float16}(i), 8))                             == ntuple(i -> Float16(i), 8)
        @test WMMA.flatten(ntuple(i -> ntuple(j -> (i-1) * 2 + j, 2), 8))                      == ntuple(i -> i, 2 * 8)
        @test WMMA.flatten(ntuple(i -> ntuple(j -> VecElement{Float16}((i-1) * 2 + j), 2), 8)) == ntuple(i -> Float16(i), 2 * 8)
    end

    @testset "Unflattening" begin
        @test WMMA.unflatten(Int64, (5,))                                                               == 5
        @test WMMA.unflatten(Float64, (5.0,))                                                           == 5.0
        @test WMMA.unflatten(VecElement{Float16}, (Float16(5),))                                        == VecElement{Float16}(5)
        @test WMMA.unflatten(NTuple{8, Int64}, ntuple(i -> i, 8))                                       == ntuple(i -> i, 8)
        @test WMMA.unflatten(NTuple{8, VecElement{Float16}}, ntuple(i -> Float16(i), 8))                == ntuple(i -> VecElement{Float16}(i), 8)
        @test WMMA.unflatten(NTuple{8, NTuple{2, Int64}}, ntuple(i -> i, 2 * 8))                        == ntuple(i -> ntuple(j -> (i-1) * 2 + j, 2), 8)
        @test WMMA.unflatten(NTuple{8, NTuple{2, VecElement{Float16}}}, ntuple(i -> Float16(i), 2 * 8)) == ntuple(i -> ntuple(j -> VecElement{Float16}((i-1) * 2 + j), 2), 8)
    end
end

################################################################################

@testset "Broadcasting over fragments: size=$sz, type=$ty" for sz = [1, 2, 5],
        ty = [Float16, Float32]
        @test ty(5) .* Fragment{16, 16, 16, sz, ty, RowMajor, MatrixA}(ntuple(i -> ty(i), sz)) == Fragment{16, 16, 16, sz, ty, RowMajor, MatrixA}(ntuple(i -> ty(5 * i), sz))
        @test ty(5) .+ Fragment{16, 16, 16, sz, ty, RowMajor, MatrixA}(ntuple(i -> ty(i), sz)) == Fragment{16, 16, 16, sz, ty, RowMajor, MatrixA}(ntuple(i -> ty(5 + i), sz))
end

################################################################################

@testset "CUDA C-style API" begin
    @testset "$(do_mac ? "MAC" : "MUL"): A: $a_layout, B: $b_layout, C: $c_layout, D: $d_layout, C type: $c_type, D type: $d_type" for a_layout in [ColMajor, RowMajor],
        b_layout in [ColMajor, RowMajor],
        c_layout in [ColMajor, RowMajor],
        d_layout in [ColMajor, RowMajor],
        c_type in [Float16, Float32],
        d_type in [Float16, Float32],
        do_mac in [true, false]

        a     = rand(Float16, (16, 16))
        b     = rand(Float16, (16, 16))
        c     = rand(c_type, (16, 16))
        d     = Array{d_type}(undef, (16, 16))

        a_dev = CuArray(a)
        b_dev = CuArray(b)
        c_dev = CuArray(c)
        d_dev = CuArray(d)

        alpha = rand(Float16)
        beta  = rand(c_type)

        @eval function kernel(a_dev, b_dev, c_dev, d_dev, alpha, beta)
            conf = Config{16, 16, 16, $d_type}

            a_frag = load_a(pointer(a_dev), 16, $a_layout, conf)
            b_frag = load_b(pointer(b_dev), 16, $b_layout, conf)

            if $do_mac
                c_frag = load_c(pointer(c_dev), 16, $c_layout, conf)
            else
                c_frag = fill_c($c_type(0), conf)
            end

            a_frag = alpha .* a_frag
            c_frag = beta .* c_frag

            d_frag = mma(a_frag, b_frag, c_frag, conf)

            store_d(pointer(d_dev), d_frag, 16, $d_layout, conf)

            return
        end

        @cuda threads=32 kernel(a_dev, b_dev, c_dev, d_dev, alpha, beta)
        d = Array(d_dev)

        new_a = (a_layout == ColMajor) ? a : transpose(a)
        new_b = (b_layout == ColMajor) ? b : transpose(b)
        new_c = (c_layout == ColMajor) ? c : transpose(c)
        new_d = (d_layout == ColMajor) ? d : transpose(d)

        if do_mac
            @test alpha * new_a * new_b + beta * new_c ≈ new_d rtol=Base.rtoldefault(Float16)
        else
            @test alpha * new_a * new_b ≈ new_d rtol=Base.rtoldefault(Float16)
        end
    end

end

################################################################################

@testset "Codegen addressing" begin
    @testset "Global" begin
        function kernel(d)
            conf = WMMA.Config{16, 16, 16, Float32}

            d_frag = WMMA.fill_c(Float32(0), conf)
            WMMA.store_d(pointer(d), d_frag, 16, WMMA.ColMajor, conf)

            return
        end

        ptx = sprint(io -> CUDA.code_ptx(io, kernel, (CuDeviceArray{Float32,1,CUDA.AS.Global},)))

        @test !occursin(r"wmma.store.d.sync(.aligned)?.col.m16n16k16.f32", ptx)
        @test  occursin(r"wmma.store.d.sync(.aligned)?.col.m16n16k16.global.f32", ptx)
    end

    @testset "Shared" begin
        function kernel()
            shmem = CuStaticSharedArray(Float32, (16, 16))
            conf = WMMA.Config{16, 16, 16, Float32}

            d_frag = WMMA.fill_c(Float32(0), conf)
            WMMA.store_d(pointer(shmem), d_frag, 16, WMMA.ColMajor, conf)

            return
        end

        ptx = sprint(io -> CUDA.code_ptx(io, kernel, ()))

        @test !occursin(r"wmma.store.d.sync(.aligned)?.col.m16n16k16.f32", ptx)
        @test  occursin(r"wmma.store.d.sync(.aligned)?.col.m16n16k16.shared.f32", ptx)
    end
end



# // u8/s8 -> s32 @ m16n16k16/m8n32k16/m32n8k16
# "m16n16k16:a:u8 : 2
# "m16n16k16:a:s8 : 2
# "m16n16k16:b:u8 : 2
# "m16n16k16:b:s8 : 2
# "m16n16k16:c:s32 : 8
# "m16n16k16:d:s32 : 8

# "m8n32k16:a:u8") : [llvm_i32_ty],
# "m8n32k16:a:s8") : [llvm_i32_ty],
# "m8n32k16:b:u8 : 4
# "m8n32k16:b:s8 : 4
# "m8n32k16:c:s32 : 8
# "m8n32k16:d:s32 : 8

# "m32n8k16:a:u8 : 4
# "m32n8k16:a:s8 : 4
# "m32n8k16:b:u8") : [llvm_i32_ty],
# "m32n8k16:b:s8") : [llvm_i32_ty],
# "m32n8k16:c:s32 : 8
# "m32n8k16:d:s32 : 8