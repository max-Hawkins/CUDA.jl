# Julia wrapper for header: cublas_v2.h
# Automatically generated using Clang.jl

@checked function cublasCreate_v2(handle)
    initialize_api()
    ccall((:cublasCreate_v2, libcublas()), cublasStatus_t,
                   (Ref{cublasHandle_t},),
                   handle)
end

@checked function cublasDestroy_v2(handle)
    initialize_api()
    ccall((:cublasDestroy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t,),
                   handle)
end

@checked function cublasGetVersion_v2(handle, version)
    ccall((:cublasGetVersion_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Ref{Cint}),
                   handle, version)
end

@checked function cublasGetProperty(type, value)
    ccall((:cublasGetProperty, libcublas()), cublasStatus_t,
                   (libraryPropertyType, Ref{Cint}),
                   type, value)
end

function cublasGetCudartVersion()
    ccall((:cublasGetCudartVersion, libcublas()), Csize_t, ())
end

@checked function cublasSetStream_v2(handle, streamId)
    initialize_api()
    ccall((:cublasSetStream_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, CUstream),
                   handle, streamId)
end

@checked function cublasGetStream_v2(handle, streamId)
    initialize_api()
    ccall((:cublasGetStream_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Ref{CUstream}),
                   handle, streamId)
end

@checked function cublasGetPointerMode_v2(handle, mode)
    initialize_api()
    ccall((:cublasGetPointerMode_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Ref{cublasPointerMode_t}),
                   handle, mode)
end

@checked function cublasSetPointerMode_v2(handle, mode)
    initialize_api()
    ccall((:cublasSetPointerMode_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasPointerMode_t),
                   handle, mode)
end

@checked function cublasGetAtomicsMode(handle, mode)
    initialize_api()
    ccall((:cublasGetAtomicsMode, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Ref{cublasAtomicsMode_t}),
                   handle, mode)
end

@checked function cublasSetAtomicsMode(handle, mode)
    initialize_api()
    ccall((:cublasSetAtomicsMode, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasAtomicsMode_t),
                   handle, mode)
end

@checked function cublasGetMathMode(handle, mode)
    initialize_api()
    ccall((:cublasGetMathMode, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Ref{UInt32}),
                   handle, mode)
end

@checked function cublasSetMathMode(handle, mode)
    initialize_api()
    ccall((:cublasSetMathMode, libcublas()), cublasStatus_t,
                   (cublasHandle_t, UInt32),
                   handle, mode)
end

@checked function cublasLoggerConfigure(logIsOn, logToStdOut, logToStdErr, logFileName)
    initialize_api()
    ccall((:cublasLoggerConfigure, libcublas()), cublasStatus_t,
                   (Cint, Cint, Cint, Cstring),
                   logIsOn, logToStdOut, logToStdErr, logFileName)
end

@checked function cublasSetLoggerCallback(userCallback)
    ccall((:cublasSetLoggerCallback, libcublas()), cublasStatus_t,
                   (cublasLogCallback,),
                   userCallback)
end

@checked function cublasGetLoggerCallback(userCallback)
    ccall((:cublasGetLoggerCallback, libcublas()), cublasStatus_t,
                   (Ref{cublasLogCallback},),
                   userCallback)
end

@checked function cublasSetVector(n, elemSize, x, incx, devicePtr, incy)
    initialize_api()
    ccall((:cublasSetVector, libcublas()), cublasStatus_t,
                   (Cint, Cint, Ptr{Cvoid}, Cint, CuPtr{Cvoid}, Cint),
                   n, elemSize, x, incx, devicePtr, incy)
end

@checked function cublasGetVector(n, elemSize, x, incx, y, incy)
    initialize_api()
    ccall((:cublasGetVector, libcublas()), cublasStatus_t,
                   (Cint, Cint, CuPtr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                   n, elemSize, x, incx, y, incy)
end

@checked function cublasSetMatrix(rows, cols, elemSize, A, lda, B, ldb)
    initialize_api()
    ccall((:cublasSetMatrix, libcublas()), cublasStatus_t,
                   (Cint, Cint, Cint, Ptr{Cvoid}, Cint, CuPtr{Cvoid}, Cint),
                   rows, cols, elemSize, A, lda, B, ldb)
end

@checked function cublasGetMatrix(rows, cols, elemSize, A, lda, B, ldb)
    initialize_api()
    ccall((:cublasGetMatrix, libcublas()), cublasStatus_t,
                   (Cint, Cint, Cint, CuPtr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                   rows, cols, elemSize, A, lda, B, ldb)
end

@checked function cublasSetVectorAsync(n, elemSize, hostPtr, incx, devicePtr, incy, stream)
    initialize_api()
    ccall((:cublasSetVectorAsync, libcublas()), cublasStatus_t,
                   (Cint, Cint, Ptr{Cvoid}, Cint, CuPtr{Cvoid}, Cint, CUstream),
                   n, elemSize, hostPtr, incx, devicePtr, incy, stream)
end

@checked function cublasGetVectorAsync(n, elemSize, devicePtr, incx, hostPtr, incy, stream)
    initialize_api()
    ccall((:cublasGetVectorAsync, libcublas()), cublasStatus_t,
                   (Cint, Cint, CuPtr{Cvoid}, Cint, Ptr{Cvoid}, Cint, CUstream),
                   n, elemSize, devicePtr, incx, hostPtr, incy, stream)
end

@checked function cublasSetMatrixAsync(rows, cols, elemSize, A, lda, B, ldb, stream)
    initialize_api()
    ccall((:cublasSetMatrixAsync, libcublas()), cublasStatus_t,
                   (Cint, Cint, Cint, Ptr{Cvoid}, Cint, CuPtr{Cvoid}, Cint, CUstream),
                   rows, cols, elemSize, A, lda, B, ldb, stream)
end

@checked function cublasGetMatrixAsync(rows, cols, elemSize, A, lda, B, ldb, stream)
    initialize_api()
    ccall((:cublasGetMatrixAsync, libcublas()), cublasStatus_t,
                   (Cint, Cint, Cint, CuPtr{Cvoid}, Cint, Ptr{Cvoid}, Cint, CUstream),
                   rows, cols, elemSize, A, lda, B, ldb, stream)
end

function cublasXerbla(srName, info)
    initialize_api()
    ccall((:cublasXerbla, libcublas()), Cvoid,
                   (Cstring, Cint),
                   srName, info)
end

@checked function cublasNrm2Ex(handle, n, x, xType, incx, result, resultType, executionType)
    initialize_api()
    ccall((:cublasNrm2Ex, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint,
                    PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, n, x, xType, incx, result, resultType, executionType)
end

@checked function cublasSnrm2_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasSnrm2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat}),
                   handle, n, x, incx, result)
end

@checked function cublasDnrm2_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasDnrm2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble}),
                   handle, n, x, incx, result)
end

@checked function cublasScnrm2_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasScnrm2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{Cfloat}),
                   handle, n, x, incx, result)
end

@checked function cublasDznrm2_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasDznrm2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{Cdouble}),
                   handle, n, x, incx, result)
end

@checked function cublasDotEx(handle, n, x, xType, incx, y, yType, incy, result,
                              resultType, executionType)
    initialize_api()
    ccall((:cublasDotEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint, CuPtr{Cvoid},
                    cudaDataType, Cint, PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, n, x, xType, incx, y, yType, incy, result, resultType,
                   executionType)
end

@checked function cublasDotcEx(handle, n, x, xType, incx, y, yType, incy, result,
                               resultType, executionType)
    initialize_api()
    ccall((:cublasDotcEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint, CuPtr{Cvoid},
                    cudaDataType, Cint, PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, n, x, xType, incx, y, yType, incy, result, resultType,
                   executionType)
end

@checked function cublasSdot_v2(handle, n, x, incx, y, incy, result)
    initialize_api()
    ccall((:cublasSdot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}),
                   handle, n, x, incx, y, incy, result)
end

@checked function cublasDdot_v2(handle, n, x, incx, y, incy, result)
    initialize_api()
    ccall((:cublasDdot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}),
                   handle, n, x, incx, y, incy, result)
end

@checked function cublasCdotu_v2(handle, n, x, incx, y, incy, result)
    initialize_api()
    ccall((:cublasCdotu_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}),
                   handle, n, x, incx, y, incy, result)
end

@checked function cublasCdotc_v2(handle, n, x, incx, y, incy, result)
    initialize_api()
    ccall((:cublasCdotc_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}),
                   handle, n, x, incx, y, incy, result)
end

@checked function cublasZdotu_v2(handle, n, x, incx, y, incy, result)
    initialize_api()
    ccall((:cublasZdotu_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex}),
                   handle, n, x, incx, y, incy, result)
end

@checked function cublasZdotc_v2(handle, n, x, incx, y, incy, result)
    initialize_api()
    ccall((:cublasZdotc_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex}),
                   handle, n, x, incx, y, incy, result)
end

@checked function cublasScalEx(handle, n, alpha, alphaType, x, xType, incx, executionType)
    initialize_api()
    ccall((:cublasScalEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, PtrOrCuPtr{Cvoid}, cudaDataType, CuPtr{Cvoid},
                    cudaDataType, Cint, cudaDataType),
                   handle, n, alpha, alphaType, x, xType, incx, executionType)
end

@checked function cublasSscal_v2(handle, n, alpha, x, incx)
    initialize_api()
    ccall((:cublasSscal_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, n, alpha, x, incx)
end

@checked function cublasDscal_v2(handle, n, alpha, x, incx)
    initialize_api()
    ccall((:cublasDscal_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, n, alpha, x, incx)
end

@checked function cublasCscal_v2(handle, n, alpha, x, incx)
    initialize_api()
    ccall((:cublasCscal_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, n, alpha, x, incx)
end

@checked function cublasCsscal_v2(handle, n, alpha, x, incx)
    initialize_api()
    ccall((:cublasCsscal_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{Cfloat}, CuPtr{cuComplex}, Cint),
                   handle, n, alpha, x, incx)
end

@checked function cublasZscal_v2(handle, n, alpha, x, incx)
    initialize_api()
    ccall((:cublasZscal_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, n, alpha, x, incx)
end

@checked function cublasZdscal_v2(handle, n, alpha, x, incx)
    initialize_api()
    ccall((:cublasZdscal_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{Cdouble}, CuPtr{cuDoubleComplex},
                    Cint),
                   handle, n, alpha, x, incx)
end

@checked function cublasAxpyEx(handle, n, alpha, alphaType, x, xType, incx, y, yType, incy,
                               executiontype)
    initialize_api()
    ccall((:cublasAxpyEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, PtrOrCuPtr{Cvoid}, cudaDataType, CuPtr{Cvoid},
                    cudaDataType, Cint, CuPtr{Cvoid}, cudaDataType, Cint, cudaDataType),
                   handle, n, alpha, alphaType, x, xType, incx, y, yType, incy,
                   executiontype)
end

@checked function cublasSaxpy_v2(handle, n, alpha, x, incx, y, incy)
    initialize_api()
    ccall((:cublasSaxpy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint,
                    CuPtr{Cfloat}, Cint),
                   handle, n, alpha, x, incx, y, incy)
end

@checked function cublasDaxpy_v2(handle, n, alpha, x, incx, y, incy)
    initialize_api()
    ccall((:cublasDaxpy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint,
                    CuPtr{Cdouble}, Cint),
                   handle, n, alpha, x, incx, y, incy)
end

@checked function cublasCaxpy_v2(handle, n, alpha, x, incx, y, incy)
    initialize_api()
    ccall((:cublasCaxpy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint,
                    CuPtr{cuComplex}, Cint),
                   handle, n, alpha, x, incx, y, incy)
end

@checked function cublasZaxpy_v2(handle, n, alpha, x, incx, y, incy)
    initialize_api()
    ccall((:cublasZaxpy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, n, alpha, x, incx, y, incy)
end

@checked function cublasCopyEx(handle, n, x, xType, incx, y, yType, incy)
    initialize_api()
    ccall((:cublasCopyEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint, CuPtr{Cvoid},
                    cudaDataType, Cint),
                   handle, n, x, xType, incx, y, yType, incy)
end

@checked function cublasScopy_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasScopy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasDcopy_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasDcopy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasCcopy_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasCcopy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasZcopy_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasZcopy_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasSswap_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasSswap_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasDswap_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasDswap_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasCswap_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasCswap_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasZswap_v2(handle, n, x, incx, y, incy)
    initialize_api()
    ccall((:cublasZswap_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, n, x, incx, y, incy)
end

@checked function cublasSwapEx(handle, n, x, xType, incx, y, yType, incy)
    initialize_api()
    ccall((:cublasSwapEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint, CuPtr{Cvoid},
                    cudaDataType, Cint),
                   handle, n, x, xType, incx, y, yType, incy)
end

@checked function cublasIsamax_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIsamax_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIdamax_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIdamax_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIcamax_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIcamax_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIzamax_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIzamax_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIamaxEx(handle, n, x, xType, incx, result)
    initialize_api()
    ccall((:cublasIamaxEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint,
                    RefOrCuRef{Cint}),
                   handle, n, x, xType, incx, result)
end

@checked function cublasIsamin_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIsamin_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIdamin_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIdamin_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIcamin_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIcamin_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIzamin_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasIzamin_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cint}),
                   handle, n, x, incx, result)
end

@checked function cublasIaminEx(handle, n, x, xType, incx, result)
    initialize_api()
    ccall((:cublasIaminEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint,
                    RefOrCuRef{Cint}),
                   handle, n, x, xType, incx, result)
end

@checked function cublasAsumEx(handle, n, x, xType, incx, result, resultType, executiontype)
    initialize_api()
    ccall((:cublasAsumEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint,
                    PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, n, x, xType, incx, result, resultType, executiontype)
end

@checked function cublasSasum_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasSasum_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat}),
                   handle, n, x, incx, result)
end

@checked function cublasDasum_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasDasum_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble}),
                   handle, n, x, incx, result)
end

@checked function cublasScasum_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasScasum_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{Cfloat}),
                   handle, n, x, incx, result)
end

@checked function cublasDzasum_v2(handle, n, x, incx, result)
    initialize_api()
    ccall((:cublasDzasum_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{Cdouble}),
                   handle, n, x, incx, result)
end

@checked function cublasSrot_v2(handle, n, x, incx, y, incy, c, s)
    initialize_api()
    ccall((:cublasSrot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}, RefOrCuRef{Cfloat}),
                   handle, n, x, incx, y, incy, c, s)
end

@checked function cublasDrot_v2(handle, n, x, incx, y, incy, c, s)
    initialize_api()
    ccall((:cublasDrot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}, RefOrCuRef{Cdouble}),
                   handle, n, x, incx, y, incy, c, s)
end

@checked function cublasCrot_v2(handle, n, x, incx, y, incy, c, s)
    initialize_api()
    ccall((:cublasCrot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{Cfloat}, RefOrCuRef{cuComplex}),
                   handle, n, x, incx, y, incy, c, s)
end

@checked function cublasCsrot_v2(handle, n, x, incx, y, incy, c, s)
    initialize_api()
    ccall((:cublasCsrot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{Cfloat}, RefOrCuRef{Cfloat}),
                   handle, n, x, incx, y, incy, c, s)
end

@checked function cublasZrot_v2(handle, n, x, incx, y, incy, c, s)
    initialize_api()
    ccall((:cublasZrot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cdouble},
                    RefOrCuRef{cuDoubleComplex}),
                   handle, n, x, incx, y, incy, c, s)
end

@checked function cublasZdrot_v2(handle, n, x, incx, y, incy, c, s)
    initialize_api()
    ccall((:cublasZdrot_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cdouble}, RefOrCuRef{Cdouble}),
                   handle, n, x, incx, y, incy, c, s)
end

@checked function cublasRotEx(handle, n, x, xType, incx, y, yType, incy, c, s, csType,
                              executiontype)
    initialize_api()
    ccall((:cublasRotEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint, CuPtr{Cvoid},
                    cudaDataType, Cint, PtrOrCuPtr{Cvoid}, PtrOrCuPtr{Cvoid}, cudaDataType,
                    cudaDataType),
                   handle, n, x, xType, incx, y, yType, incy, c, s, csType, executiontype)
end

@checked function cublasSrotg_v2(handle, a, b, c, s)
    initialize_api()
    ccall((:cublasSrotg_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, RefOrCuRef{Cfloat}, RefOrCuRef{Cfloat},
                    RefOrCuRef{Cfloat}, RefOrCuRef{Cfloat}),
                   handle, a, b, c, s)
end

@checked function cublasDrotg_v2(handle, a, b, c, s)
    initialize_api()
    ccall((:cublasDrotg_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, RefOrCuRef{Cdouble}, RefOrCuRef{Cdouble},
                    PtrOrCuPtr{Cdouble}, PtrOrCuPtr{Cdouble}),
                   handle, a, b, c, s)
end

@checked function cublasCrotg_v2(handle, a, b, c, s)
    initialize_api()
    ccall((:cublasCrotg_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, RefOrCuRef{cuComplex}, RefOrCuRef{cuComplex},
                    RefOrCuRef{Cfloat}, RefOrCuRef{cuComplex}),
                   handle, a, b, c, s)
end

@checked function cublasZrotg_v2(handle, a, b, c, s)
    initialize_api()
    ccall((:cublasZrotg_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, RefOrCuRef{cuDoubleComplex},
                    RefOrCuRef{cuDoubleComplex}, RefOrCuRef{Cdouble},
                    RefOrCuRef{cuDoubleComplex}),
                   handle, a, b, c, s)
end

@checked function cublasRotgEx(handle, a, b, abType, c, s, csType, executiontype)
    initialize_api()
    ccall((:cublasRotgEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Ptr{Cvoid}, Ptr{Cvoid}, cudaDataType,
                    PtrOrCuPtr{Cvoid}, PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, a, b, abType, c, s, csType, executiontype)
end

@checked function cublasSrotm_v2(handle, n, x, incx, y, incy, param)
    initialize_api()
    ccall((:cublasSrotm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    PtrOrCuPtr{Cfloat}),
                   handle, n, x, incx, y, incy, param)
end

@checked function cublasDrotm_v2(handle, n, x, incx, y, incy, param)
    initialize_api()
    ccall((:cublasDrotm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    PtrOrCuPtr{Cdouble}),
                   handle, n, x, incx, y, incy, param)
end

@checked function cublasRotmEx(handle, n, x, xType, incx, y, yType, incy, param, paramType,
                               executiontype)
    initialize_api()
    ccall((:cublasRotmEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Cvoid}, cudaDataType, Cint, CuPtr{Cvoid},
                    cudaDataType, Cint, PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, n, x, xType, incx, y, yType, incy, param, paramType,
                   executiontype)
end

@checked function cublasSrotmg_v2(handle, d1, d2, x1, y1, param)
    initialize_api()
    ccall((:cublasSrotmg_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, RefOrCuRef{Cfloat}, RefOrCuRef{Cfloat},
                    RefOrCuRef{Cfloat}, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}),
                   handle, d1, d2, x1, y1, param)
end

@checked function cublasDrotmg_v2(handle, d1, d2, x1, y1, param)
    initialize_api()
    ccall((:cublasDrotmg_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, RefOrCuRef{Cdouble}, RefOrCuRef{Cdouble},
                    RefOrCuRef{Cdouble}, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}),
                   handle, d1, d2, x1, y1, param)
end

@checked function cublasRotmgEx(handle, d1, d1Type, d2, d2Type, x1, x1Type, y1, y1Type,
                                param, paramType, executiontype)
    initialize_api()
    ccall((:cublasRotmgEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, PtrOrCuPtr{Cvoid}, cudaDataType, PtrOrCuPtr{Cvoid},
                    cudaDataType, PtrOrCuPtr{Cvoid}, cudaDataType, PtrOrCuPtr{Cvoid},
                    cudaDataType, PtrOrCuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, d1, d1Type, d2, d2Type, x1, x1Type, y1, y1Type, param,
                   paramType, executiontype)
end

@checked function cublasSgemv_v2(handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasSgemv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint),
                   handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasDgemv_v2(handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasDgemv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasCgemv_v2(handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasCgemv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasZgemv_v2(handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasZgemv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, trans, m, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasSgbmv_v2(handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta,
                                 y, incy)
    initialize_api()
    ccall((:cublasSgbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasDgbmv_v2(handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta,
                                 y, incy)
    initialize_api()
    ccall((:cublasDgbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasCgbmv_v2(handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta,
                                 y, incy)
    initialize_api()
    ccall((:cublasCgbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasZgbmv_v2(handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta,
                                 y, incy)
    initialize_api()
    ccall((:cublasZgbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, trans, m, n, kl, ku, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasStrmv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasStrmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasDtrmv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasDtrmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasCtrmv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasCtrmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasZtrmv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasZtrmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasStbmv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasStbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasDtbmv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasDtbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasCtbmv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasCtbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasZtbmv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasZtbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasStpmv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasStpmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasDtpmv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasDtpmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasCtpmv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasCtpmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasZtpmv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasZtpmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasStrsv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasStrsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasDtrsv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasDtrsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasCtrsv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasCtrsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasZtrsv_v2(handle, uplo, trans, diag, n, A, lda, x, incx)
    initialize_api()
    ccall((:cublasZtrsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, diag, n, A, lda, x, incx)
end

@checked function cublasStpsv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasStpsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasDtpsv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasDtpsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasCtpsv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasCtpsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasZtpsv_v2(handle, uplo, trans, diag, n, AP, x, incx)
    initialize_api()
    ccall((:cublasZtpsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, diag, n, AP, x, incx)
end

@checked function cublasStbsv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasStbsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasDtbsv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasDtbsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasCtbsv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasCtbsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasZtbsv_v2(handle, uplo, trans, diag, n, k, A, lda, x, incx)
    initialize_api()
    ccall((:cublasZtbsv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, cublasDiagType_t,
                    Cint, Cint, CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, diag, n, k, A, lda, x, incx)
end

@checked function cublasSsymv_v2(handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasSsymv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint),
                   handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasDsymv_v2(handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasDsymv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasCsymv_v2(handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasCsymv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasZsymv_v2(handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasZsymv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasChemv_v2(handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasChemv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasZhemv_v2(handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasZhemv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasSsbmv_v2(handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasSsbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint),
                   handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasDsbmv_v2(handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasDsbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasChbmv_v2(handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasChbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasZhbmv_v2(handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasZhbmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, k, alpha, A, lda, x, incx, beta, y, incy)
end

@checked function cublasSspmv_v2(handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasSspmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat},
                    Cint),
                   handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
end

@checked function cublasDspmv_v2(handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasDspmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
end

@checked function cublasChpmv_v2(handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasChpmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
end

@checked function cublasZhpmv_v2(handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
    initialize_api()
    ccall((:cublasZhpmv_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, AP, x, incx, beta, y, incy)
end

@checked function cublasSger_v2(handle, m, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasSger_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint,
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, m, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasDger_v2(handle, m, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasDger_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint,
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, m, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasCgeru_v2(handle, m, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasCgeru_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex},
                    Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, m, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasCgerc_v2(handle, m, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasCgerc_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex},
                    Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, m, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasZgeru_v2(handle, m, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasZgeru_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, m, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasZgerc_v2(handle, m, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasZgerc_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, m, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasSsyr_v2(handle, uplo, n, alpha, x, incx, A, lda)
    initialize_api()
    ccall((:cublasSsyr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, uplo, n, alpha, x, incx, A, lda)
end

@checked function cublasDsyr_v2(handle, uplo, n, alpha, x, incx, A, lda)
    initialize_api()
    ccall((:cublasDsyr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, uplo, n, alpha, x, incx, A, lda)
end

@checked function cublasCsyr_v2(handle, uplo, n, alpha, x, incx, A, lda)
    initialize_api()
    ccall((:cublasCsyr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, A, lda)
end

@checked function cublasZsyr_v2(handle, uplo, n, alpha, x, incx, A, lda)
    initialize_api()
    ccall((:cublasZsyr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, A, lda)
end

@checked function cublasCher_v2(handle, uplo, n, alpha, x, incx, A, lda)
    initialize_api()
    ccall((:cublasCher_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, A, lda)
end

@checked function cublasZher_v2(handle, uplo, n, alpha, x, incx, A, lda)
    initialize_api()
    ccall((:cublasZher_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, A, lda)
end

@checked function cublasSspr_v2(handle, uplo, n, alpha, x, incx, AP)
    initialize_api()
    ccall((:cublasSspr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}),
                   handle, uplo, n, alpha, x, incx, AP)
end

@checked function cublasDspr_v2(handle, uplo, n, alpha, x, incx, AP)
    initialize_api()
    ccall((:cublasDspr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}),
                   handle, uplo, n, alpha, x, incx, AP)
end

@checked function cublasChpr_v2(handle, uplo, n, alpha, x, incx, AP)
    initialize_api()
    ccall((:cublasChpr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}),
                   handle, uplo, n, alpha, x, incx, AP)
end

@checked function cublasZhpr_v2(handle, uplo, n, alpha, x, incx, AP)
    initialize_api()
    ccall((:cublasZhpr_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}),
                   handle, uplo, n, alpha, x, incx, AP)
end

@checked function cublasSsyr2_v2(handle, uplo, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasSsyr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, uplo, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasDsyr2_v2(handle, uplo, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasDsyr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, uplo, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasCsyr2_v2(handle, uplo, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasCsyr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasZsyr2_v2(handle, uplo, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasZsyr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasCher2_v2(handle, uplo, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasCher2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasZher2_v2(handle, uplo, n, alpha, x, incx, y, incy, A, lda)
    initialize_api()
    ccall((:cublasZher2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, alpha, x, incx, y, incy, A, lda)
end

@checked function cublasSspr2_v2(handle, uplo, n, alpha, x, incx, y, incy, AP)
    initialize_api()
    ccall((:cublasSspr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}),
                   handle, uplo, n, alpha, x, incx, y, incy, AP)
end

@checked function cublasDspr2_v2(handle, uplo, n, alpha, x, incx, y, incy, AP)
    initialize_api()
    ccall((:cublasDspr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}),
                   handle, uplo, n, alpha, x, incx, y, incy, AP)
end

@checked function cublasChpr2_v2(handle, uplo, n, alpha, x, incx, y, incy, AP)
    initialize_api()
    ccall((:cublasChpr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}),
                   handle, uplo, n, alpha, x, incx, y, incy, AP)
end

@checked function cublasZhpr2_v2(handle, uplo, n, alpha, x, incx, y, incy, AP)
    initialize_api()
    ccall((:cublasZhpr2_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}),
                   handle, uplo, n, alpha, x, incx, y, incy, AP)
end

@checked function cublasSgemm_v2(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    ccall((:cublasSgemm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasDgemm_v2(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    ccall((:cublasDgemm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCgemm_v2(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    ccall((:cublasCgemm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex},
                    Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCgemm3m(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                beta, C, ldc)
    initialize_api()
    ccall((:cublasCgemm3m, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex},
                    Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCgemm3mEx(handle, transa, transb, m, n, k, alpha, A, Atype, lda, B,
                                  Btype, ldb, beta, C, Ctype, ldc)
    initialize_api()
    ccall((:cublasCgemm3mEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{Cvoid}, cudaDataType, Cint,
                    CuPtr{Cvoid}, cudaDataType, Cint, RefOrCuRef{cuComplex}, CuPtr{Cvoid},
                    cudaDataType, Cint),
                   handle, transa, transb, m, n, k, alpha, A, Atype, lda, B, Btype, ldb,
                   beta, C, Ctype, ldc)
end

@checked function cublasZgemm_v2(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    ccall((:cublasZgemm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZgemm3m(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                beta, C, ldc)
    initialize_api()
    ccall((:cublasZgemm3m, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasSgemmEx(handle, transa, transb, m, n, k, alpha, A, Atype, lda, B,
                                Btype, ldb, beta, C, Ctype, ldc)
    initialize_api()
    ccall((:cublasSgemmEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cfloat}, CuPtr{Cvoid}, cudaDataType, Cint,
                    CuPtr{Cvoid}, cudaDataType, Cint, RefOrCuRef{Cfloat}, CuPtr{Cvoid},
                    cudaDataType, Cint),
                   handle, transa, transb, m, n, k, alpha, A, Atype, lda, B, Btype, ldb,
                   beta, C, Ctype, ldc)
end

@checked function cublasGemmEx(handle, transa, transb, m, n, k, alpha, A, Atype, lda, B,
                               Btype, ldb, beta, C, Ctype, ldc, computeType, algo)
    initialize_api()
    ccall((:cublasGemmEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, PtrOrCuPtr{Cvoid}, CuPtr{Cvoid}, cudaDataType, Cint,
                    CuPtr{Cvoid}, cudaDataType, Cint, PtrOrCuPtr{Cvoid}, CuPtr{Cvoid},
                    cudaDataType, Cint, UInt32, cublasGemmAlgo_t),
                   handle, transa, transb, m, n, k, alpha, A, Atype, lda, B, Btype, ldb,
                   beta, C, Ctype, ldc, computeType, algo)
end

@checked function cublasCgemmEx(handle, transa, transb, m, n, k, alpha, A, Atype, lda, B,
                                Btype, ldb, beta, C, Ctype, ldc)
    initialize_api()
    ccall((:cublasCgemmEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{Cvoid}, cudaDataType, Cint,
                    CuPtr{Cvoid}, cudaDataType, Cint, RefOrCuRef{cuComplex}, CuPtr{Cvoid},
                    cudaDataType, Cint),
                   handle, transa, transb, m, n, k, alpha, A, Atype, lda, B, Btype, ldb,
                   beta, C, Ctype, ldc)
end

@checked function cublasUint8gemmBias(handle, transa, transb, transc, m, n, k, A, A_bias,
                                      lda, B, B_bias, ldb, C, C_bias, ldc, C_mult, C_shift)
    initialize_api()
    ccall((:cublasUint8gemmBias, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t,
                    cublasOperation_t, Cint, Cint, Cint, CuPtr{Cuchar}, Cint, Cint,
                    CuPtr{Cuchar}, Cint, Cint, CuPtr{Cuchar}, Cint, Cint, Cint, Cint),
                   handle, transa, transb, transc, m, n, k, A, A_bias, lda, B, B_bias, ldb,
                   C, C_bias, ldc, C_mult, C_shift)
end

@checked function cublasSsyrk_v2(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasSsyrk_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasDsyrk_v2(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasDsyrk_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasCsyrk_v2(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasCsyrk_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasZsyrk_v2(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasZsyrk_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasCsyrkEx(handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C,
                                Ctype, ldc)
    initialize_api()
    ccall((:cublasCsyrkEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{Cvoid}, cudaDataType, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{Cvoid}, cudaDataType, Cint),
                   handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C, Ctype, ldc)
end

@checked function cublasCsyrk3mEx(handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C,
                                  Ctype, ldc)
    initialize_api()
    ccall((:cublasCsyrk3mEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{Cvoid}, cudaDataType, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{Cvoid}, cudaDataType, Cint),
                   handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C, Ctype, ldc)
end

@checked function cublasCherk_v2(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasCherk_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{cuComplex}, Cint, RefOrCuRef{Cfloat},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasZherk_v2(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasZherk_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasCherkEx(handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C,
                                Ctype, ldc)
    initialize_api()
    ccall((:cublasCherkEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cvoid}, cudaDataType, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cvoid}, cudaDataType, Cint),
                   handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C, Ctype, ldc)
end

@checked function cublasCherk3mEx(handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C,
                                  Ctype, ldc)
    initialize_api()
    ccall((:cublasCherk3mEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cvoid}, cudaDataType, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cvoid}, cudaDataType, Cint),
                   handle, uplo, trans, n, k, alpha, A, Atype, lda, beta, C, Ctype, ldc)
end

@checked function cublasSsyr2k_v2(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta,
                                  C, ldc)
    initialize_api()
    ccall((:cublasSsyr2k_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasDsyr2k_v2(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta,
                                  C, ldc)
    initialize_api()
    ccall((:cublasDsyr2k_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCsyr2k_v2(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta,
                                  C, ldc)
    initialize_api()
    ccall((:cublasCsyr2k_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZsyr2k_v2(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta,
                                  C, ldc)
    initialize_api()
    ccall((:cublasZsyr2k_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCher2k_v2(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta,
                                  C, ldc)
    initialize_api()
    ccall((:cublasCher2k_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZher2k_v2(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta,
                                  C, ldc)
    initialize_api()
    ccall((:cublasZher2k_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasSsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                               ldc)
    initialize_api()
    ccall((:cublasSsyrkx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasDsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                               ldc)
    initialize_api()
    ccall((:cublasDsyrkx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                               ldc)
    initialize_api()
    ccall((:cublasCsyrkx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                               ldc)
    initialize_api()
    ccall((:cublasZsyrkx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCherkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                               ldc)
    initialize_api()
    ccall((:cublasCherkx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{cuComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZherkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                               ldc)
    initialize_api()
    ccall((:cublasZherkx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasSsymm_v2(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasSsymm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasDsymm_v2(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasDsymm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasCsymm_v2(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasCsymm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZsymm_v2(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasZsymm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasChemm_v2(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasChemm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasZhemm_v2(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasZhemm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasStrsm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb)
    initialize_api()
    ccall((:cublasStrsm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint,
                    CuPtr{Cfloat}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasDtrsm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb)
    initialize_api()
    ccall((:cublasDtrsm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble},
                    Cint, CuPtr{Cdouble}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasCtrsm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb)
    initialize_api()
    ccall((:cublasCtrsm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex},
                    Cint, CuPtr{cuComplex}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasZtrsm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb)
    initialize_api()
    ccall((:cublasZtrsm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasStrmm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb, C, ldc)
    initialize_api()
    ccall((:cublasStrmm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint,
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasDtrmm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb, C, ldc)
    initialize_api()
    ccall((:cublasDtrmm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble},
                    Cint, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasCtrmm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb, C, ldc)
    initialize_api()
    ccall((:cublasCtrmm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex},
                    Cint, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasZtrmm_v2(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                 ldb, C, ldc)
    initialize_api()
    ccall((:cublasZtrmm_v2, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasHgemmBatched(handle, transa, transb, m, n, k, alpha, Aarray, lda,
                                     Barray, ldb, beta, Carray, ldc, batchCount)
    initialize_api()
    ccall((:cublasHgemmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Float16}, CuPtr{Ptr{Float16}}, Cint, CuPtr{Ptr{Float16}},
                    Cint, RefOrCuRef{Float16}, CuPtr{Ptr{Float16}}, Cint, Cint),
                   handle, transa, transb, m, n, k, alpha, Aarray, lda, Barray, ldb, beta,
                   Carray, ldc, batchCount)
end

@checked function cublasSgemmBatched(handle, transa, transb, m, n, k, alpha, Aarray, lda,
                                     Barray, ldb, beta, Carray, ldc, batchCount)
    initialize_api()
    ccall((:cublasSgemmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cfloat}, CuPtr{Ptr{Cfloat}}, Cint, CuPtr{Ptr{Cfloat}},
                    Cint, RefOrCuRef{Cfloat}, CuPtr{Ptr{Cfloat}}, Cint, Cint),
                   handle, transa, transb, m, n, k, alpha, Aarray, lda, Barray, ldb, beta,
                   Carray, ldc, batchCount)
end

@checked function cublasDgemmBatched(handle, transa, transb, m, n, k, alpha, Aarray, lda,
                                     Barray, ldb, beta, Carray, ldc, batchCount)
    initialize_api()
    ccall((:cublasDgemmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cdouble}, CuPtr{Ptr{Cdouble}}, Cint,
                    CuPtr{Ptr{Cdouble}}, Cint, RefOrCuRef{Cdouble}, CuPtr{Ptr{Cdouble}},
                    Cint, Cint),
                   handle, transa, transb, m, n, k, alpha, Aarray, lda, Barray, ldb, beta,
                   Carray, ldc, batchCount)
end

@checked function cublasCgemmBatched(handle, transa, transb, m, n, k, alpha, Aarray, lda,
                                     Barray, ldb, beta, Carray, ldc, batchCount)
    initialize_api()
    ccall((:cublasCgemmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{Ptr{cuComplex}}, Cint,
                    CuPtr{Ptr{cuComplex}}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{Ptr{cuComplex}}, Cint, Cint),
                   handle, transa, transb, m, n, k, alpha, Aarray, lda, Barray, ldb, beta,
                   Carray, ldc, batchCount)
end

@checked function cublasCgemm3mBatched(handle, transa, transb, m, n, k, alpha, Aarray, lda,
                                       Barray, ldb, beta, Carray, ldc, batchCount)
    initialize_api()
    ccall((:cublasCgemm3mBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{Ptr{cuComplex}}, Cint,
                    CuPtr{Ptr{cuComplex}}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{Ptr{cuComplex}}, Cint, Cint),
                   handle, transa, transb, m, n, k, alpha, Aarray, lda, Barray, ldb, beta,
                   Carray, ldc, batchCount)
end

@checked function cublasZgemmBatched(handle, transa, transb, m, n, k, alpha, Aarray, lda,
                                     Barray, ldb, beta, Carray, ldc, batchCount)
    initialize_api()
    ccall((:cublasZgemmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuDoubleComplex}, CuPtr{Ptr{cuDoubleComplex}}, Cint,
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, Cint),
                   handle, transa, transb, m, n, k, alpha, Aarray, lda, Barray, ldb, beta,
                   Carray, ldc, batchCount)
end

@checked function cublasGemmBatchedEx(handle, transa, transb, m, n, k, alpha, Aarray,
                                      Atype, lda, Barray, Btype, ldb, beta, Carray, Ctype,
                                      ldc, batchCount, computeType, algo)
    initialize_api()
    ccall((:cublasGemmBatchedEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, PtrOrCuPtr{Cvoid}, CuPtr{Ptr{Cvoid}}, cudaDataType, Cint,
                    CuPtr{Ptr{Cvoid}}, cudaDataType, Cint, PtrOrCuPtr{Cvoid},
                    CuPtr{Ptr{Cvoid}}, cudaDataType, Cint, Cint, cublasComputeType_t,
                    cublasGemmAlgo_t),
                   handle, transa, transb, m, n, k, alpha, Aarray, Atype, lda, Barray,
                   Btype, ldb, beta, Carray, Ctype, ldc, batchCount, computeType, algo)
end

@checked function cublasGemmStridedBatchedEx(handle, transa, transb, m, n, k, alpha, A,
                                             Atype, lda, strideA, B, Btype, ldb, strideB,
                                             beta, C, Ctype, ldc, strideC, batchCount,
                                             computeType, algo)
    initialize_api()
    ccall((:cublasGemmStridedBatchedEx, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, PtrOrCuPtr{Cvoid}, CuPtr{Cvoid}, cudaDataType, Cint, Clonglong,
                    CuPtr{Cvoid}, cudaDataType, Cint, Clonglong, PtrOrCuPtr{Cvoid},
                    CuPtr{Cvoid}, cudaDataType, Cint, Clonglong, Cint, cublasComputeType_t,
                    cublasGemmAlgo_t),
                   handle, transa, transb, m, n, k, alpha, A, Atype, lda, strideA, B,
                   Btype, ldb, strideB, beta, C, Ctype, ldc, strideC, batchCount,
                   computeType, algo)
end

@checked function cublasHgemmStridedBatched(handle, transa, transb, m, n, k, alpha, A, lda,
                                            strideA, B, ldb, strideB, beta, C, ldc,
                                            strideC, batchCount)
    initialize_api()
    ccall((:cublasHgemmStridedBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Float16}, CuPtr{Float16}, Cint, Clonglong,
                    CuPtr{Float16}, Cint, Clonglong, RefOrCuRef{Float16}, CuPtr{Float16},
                    Cint, Clonglong, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, strideA, B, ldb,
                   strideB, beta, C, ldc, strideC, batchCount)
end

@checked function cublasSgemmStridedBatched(handle, transa, transb, m, n, k, alpha, A, lda,
                                            strideA, B, ldb, strideB, beta, C, ldc,
                                            strideC, batchCount)
    initialize_api()
    ccall((:cublasSgemmStridedBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, Clonglong,
                    CuPtr{Cfloat}, Cint, Clonglong, RefOrCuRef{Cfloat}, CuPtr{Cfloat},
                    Cint, Clonglong, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, strideA, B, ldb,
                   strideB, beta, C, ldc, strideC, batchCount)
end

@checked function cublasDgemmStridedBatched(handle, transa, transb, m, n, k, alpha, A, lda,
                                            strideA, B, ldb, strideB, beta, C, ldc,
                                            strideC, batchCount)
    initialize_api()
    ccall((:cublasDgemmStridedBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, Clonglong,
                    CuPtr{Cdouble}, Cint, Clonglong, RefOrCuRef{Cdouble}, CuPtr{Cdouble},
                    Cint, Clonglong, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, strideA, B, ldb,
                   strideB, beta, C, ldc, strideC, batchCount)
end

@checked function cublasCgemmStridedBatched(handle, transa, transb, m, n, k, alpha, A, lda,
                                            strideA, B, ldb, strideB, beta, C, ldc,
                                            strideC, batchCount)
    initialize_api()
    ccall((:cublasCgemmStridedBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, Clonglong,
                    CuPtr{cuComplex}, Cint, Clonglong, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, Clonglong, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, strideA, B, ldb,
                   strideB, beta, C, ldc, strideC, batchCount)
end

@checked function cublasCgemm3mStridedBatched(handle, transa, transb, m, n, k, alpha, A,
                                              lda, strideA, B, ldb, strideB, beta, C, ldc,
                                              strideC, batchCount)
    initialize_api()
    ccall((:cublasCgemm3mStridedBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, Clonglong,
                    CuPtr{cuComplex}, Cint, Clonglong, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, Clonglong, Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, strideA, B, ldb,
                   strideB, beta, C, ldc, strideC, batchCount)
end

@checked function cublasZgemmStridedBatched(handle, transa, transb, m, n, k, alpha, A, lda,
                                            strideA, B, ldb, strideB, beta, C, ldc,
                                            strideC, batchCount)
    initialize_api()
    ccall((:cublasZgemmStridedBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    Cint, RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    Clonglong, CuPtr{cuDoubleComplex}, Cint, Clonglong,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint, Clonglong,
                    Cint),
                   handle, transa, transb, m, n, k, alpha, A, lda, strideA, B, ldb,
                   strideB, beta, C, ldc, strideC, batchCount)
end

@checked function cublasSgeam(handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C,
                              ldc)
    initialize_api()
    ccall((:cublasSgeam, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cfloat}, CuPtr{Cfloat}, Cint, RefOrCuRef{Cfloat},
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C, ldc)
end

@checked function cublasDgeam(handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C,
                              ldc)
    initialize_api()
    ccall((:cublasDgeam, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{Cdouble}, CuPtr{Cdouble}, Cint, RefOrCuRef{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C, ldc)
end

@checked function cublasCgeam(handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C,
                              ldc)
    initialize_api()
    ccall((:cublasCgeam, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuComplex}, CuPtr{cuComplex}, Cint, RefOrCuRef{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C, ldc)
end

@checked function cublasZgeam(handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C,
                              ldc)
    initialize_api()
    ccall((:cublasZgeam, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, cublasOperation_t, Cint, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    RefOrCuRef{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, transa, transb, m, n, alpha, A, lda, beta, B, ldb, C, ldc)
end

@checked function cublasSgetrfBatched(handle, n, A, lda, P, info, batchSize)
    initialize_api()
    ccall((:cublasSgetrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{Cfloat}}, Cint, CuPtr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, info, batchSize)
end

@checked function cublasDgetrfBatched(handle, n, A, lda, P, info, batchSize)
    initialize_api()
    ccall((:cublasDgetrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{Cdouble}}, Cint, CuPtr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, info, batchSize)
end

@checked function cublasCgetrfBatched(handle, n, A, lda, P, info, batchSize)
    initialize_api()
    ccall((:cublasCgetrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{cuComplex}}, Cint, CuPtr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, info, batchSize)
end

@checked function cublasZgetrfBatched(handle, n, A, lda, P, info, batchSize)
    initialize_api()
    ccall((:cublasZgetrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, info, batchSize)
end

@checked function cublasSgetriBatched(handle, n, A, lda, P, C, ldc, info, batchSize)
    initialize_api()
    ccall((:cublasSgetriBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{Cfloat}}, Cint, CuPtr{Cint},
                    CuPtr{Ptr{Cfloat}}, Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, C, ldc, info, batchSize)
end

@checked function cublasDgetriBatched(handle, n, A, lda, P, C, ldc, info, batchSize)
    initialize_api()
    ccall((:cublasDgetriBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{Cdouble}}, Cint, CuPtr{Cint},
                    CuPtr{Ptr{Cdouble}}, Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, C, ldc, info, batchSize)
end

@checked function cublasCgetriBatched(handle, n, A, lda, P, C, ldc, info, batchSize)
    initialize_api()
    ccall((:cublasCgetriBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{cuComplex}}, Cint, CuPtr{Cint},
                    CuPtr{Ptr{cuComplex}}, Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, C, ldc, info, batchSize)
end

@checked function cublasZgetriBatched(handle, n, A, lda, P, C, ldc, info, batchSize)
    initialize_api()
    ccall((:cublasZgetriBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Cint},
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, P, C, ldc, info, batchSize)
end

@checked function cublasSgetrsBatched(handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray,
                                      ldb, info, batchSize)
    initialize_api()
    ccall((:cublasSgetrsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, CuPtr{Ptr{Cfloat}},
                    Cint, CuPtr{Cint}, CuPtr{Ptr{Cfloat}}, Cint, Ptr{Cint}, Cint),
                   handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray, ldb, info,
                   batchSize)
end

@checked function cublasDgetrsBatched(handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray,
                                      ldb, info, batchSize)
    initialize_api()
    ccall((:cublasDgetrsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, CuPtr{Ptr{Cdouble}},
                    Cint, CuPtr{Cint}, CuPtr{Ptr{Cdouble}}, Cint, Ptr{Cint}, Cint),
                   handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray, ldb, info,
                   batchSize)
end

@checked function cublasCgetrsBatched(handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray,
                                      ldb, info, batchSize)
    initialize_api()
    ccall((:cublasCgetrsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, CuPtr{Ptr{cuComplex}},
                    Cint, CuPtr{Cint}, CuPtr{Ptr{cuComplex}}, Cint, Ptr{Cint}, Cint),
                   handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray, ldb, info,
                   batchSize)
end

@checked function cublasZgetrsBatched(handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray,
                                      ldb, info, batchSize)
    initialize_api()
    ccall((:cublasZgetrsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint,
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Cint},
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, Ptr{Cint}, Cint),
                   handle, trans, n, nrhs, Aarray, lda, devIpiv, Barray, ldb, info,
                   batchSize)
end

@checked function cublasStrsmBatched(handle, side, uplo, trans, diag, m, n, alpha, A, lda,
                                     B, ldb, batchCount)
    initialize_api()
    ccall((:cublasStrsmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{Cfloat}, CuPtr{Ptr{Cfloat}},
                    Cint, CuPtr{Ptr{Cfloat}}, Cint, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb,
                   batchCount)
end

@checked function cublasDtrsmBatched(handle, side, uplo, trans, diag, m, n, alpha, A, lda,
                                     B, ldb, batchCount)
    initialize_api()
    ccall((:cublasDtrsmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{Cdouble}, CuPtr{Ptr{Cdouble}},
                    Cint, CuPtr{Ptr{Cdouble}}, Cint, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb,
                   batchCount)
end

@checked function cublasCtrsmBatched(handle, side, uplo, trans, diag, m, n, alpha, A, lda,
                                     B, ldb, batchCount)
    initialize_api()
    ccall((:cublasCtrsmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{cuComplex},
                    CuPtr{Ptr{cuComplex}}, Cint, CuPtr{Ptr{cuComplex}}, Cint, Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb,
                   batchCount)
end

@checked function cublasZtrsmBatched(handle, side, uplo, trans, diag, m, n, alpha, A, lda,
                                     B, ldb, batchCount)
    initialize_api()
    ccall((:cublasZtrsmBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, cublasFillMode_t, cublasOperation_t,
                    cublasDiagType_t, Cint, Cint, RefOrCuRef{cuDoubleComplex},
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Ptr{cuDoubleComplex}}, Cint,
                    Cint),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb,
                   batchCount)
end

@checked function cublasSmatinvBatched(handle, n, A, lda, Ainv, lda_inv, info, batchSize)
    initialize_api()
    ccall((:cublasSmatinvBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{Cfloat}}, Cint, CuPtr{Ptr{Cfloat}},
                    Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, Ainv, lda_inv, info, batchSize)
end

@checked function cublasDmatinvBatched(handle, n, A, lda, Ainv, lda_inv, info, batchSize)
    initialize_api()
    ccall((:cublasDmatinvBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{Cdouble}}, Cint, CuPtr{Ptr{Cdouble}},
                    Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, Ainv, lda_inv, info, batchSize)
end

@checked function cublasCmatinvBatched(handle, n, A, lda, Ainv, lda_inv, info, batchSize)
    initialize_api()
    ccall((:cublasCmatinvBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{cuComplex}}, Cint,
                    CuPtr{Ptr{cuComplex}}, Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, Ainv, lda_inv, info, batchSize)
end

@checked function cublasZmatinvBatched(handle, n, A, lda, Ainv, lda_inv, info, batchSize)
    initialize_api()
    ccall((:cublasZmatinvBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, CuPtr{Ptr{cuDoubleComplex}}, Cint,
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Cint}, Cint),
                   handle, n, A, lda, Ainv, lda_inv, info, batchSize)
end

@checked function cublasSgeqrfBatched(handle, m, n, Aarray, lda, TauArray, info, batchSize)
    initialize_api()
    ccall((:cublasSgeqrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, CuPtr{Ptr{Cfloat}}, Cint,
                    CuPtr{Ptr{Cfloat}}, Ptr{Cint}, Cint),
                   handle, m, n, Aarray, lda, TauArray, info, batchSize)
end

@checked function cublasDgeqrfBatched(handle, m, n, Aarray, lda, TauArray, info, batchSize)
    initialize_api()
    ccall((:cublasDgeqrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, CuPtr{Ptr{Cdouble}}, Cint,
                    CuPtr{Ptr{Cdouble}}, Ptr{Cint}, Cint),
                   handle, m, n, Aarray, lda, TauArray, info, batchSize)
end

@checked function cublasCgeqrfBatched(handle, m, n, Aarray, lda, TauArray, info, batchSize)
    initialize_api()
    ccall((:cublasCgeqrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, CuPtr{Ptr{cuComplex}}, Cint,
                    CuPtr{Ptr{cuComplex}}, Ptr{Cint}, Cint),
                   handle, m, n, Aarray, lda, TauArray, info, batchSize)
end

@checked function cublasZgeqrfBatched(handle, m, n, Aarray, lda, TauArray, info, batchSize)
    initialize_api()
    ccall((:cublasZgeqrfBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, Cint, Cint, CuPtr{Ptr{cuDoubleComplex}}, Cint,
                    CuPtr{Ptr{cuDoubleComplex}}, Ptr{Cint}, Cint),
                   handle, m, n, Aarray, lda, TauArray, info, batchSize)
end

@checked function cublasSgelsBatched(handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc,
                                     info, devInfoArray, batchSize)
    initialize_api()
    ccall((:cublasSgelsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint,
                    CuPtr{Ptr{Cfloat}}, Cint, CuPtr{Ptr{Cfloat}}, Cint, Ptr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc, info, devInfoArray,
                   batchSize)
end

@checked function cublasDgelsBatched(handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc,
                                     info, devInfoArray, batchSize)
    initialize_api()
    ccall((:cublasDgelsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint,
                    CuPtr{Ptr{Cdouble}}, Cint, CuPtr{Ptr{Cdouble}}, Cint, Ptr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc, info, devInfoArray,
                   batchSize)
end

@checked function cublasCgelsBatched(handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc,
                                     info, devInfoArray, batchSize)
    initialize_api()
    ccall((:cublasCgelsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint,
                    CuPtr{Ptr{cuComplex}}, Cint, CuPtr{Ptr{cuComplex}}, Cint, Ptr{Cint},
                    CuPtr{Cint}, Cint),
                   handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc, info, devInfoArray,
                   batchSize)
end

@checked function cublasZgelsBatched(handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc,
                                     info, devInfoArray, batchSize)
    initialize_api()
    ccall((:cublasZgelsBatched, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasOperation_t, Cint, Cint, Cint,
                    CuPtr{Ptr{cuDoubleComplex}}, Cint, CuPtr{Ptr{cuDoubleComplex}}, Cint,
                    Ptr{Cint}, CuPtr{Cint}, Cint),
                   handle, trans, m, n, nrhs, Aarray, lda, Carray, ldc, info, devInfoArray,
                   batchSize)
end

@checked function cublasSdgmm(handle, mode, m, n, A, lda, x, incx, C, ldc)
    initialize_api()
    ccall((:cublasSdgmm, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, Cint, Cint, CuPtr{Cfloat}, Cint,
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, mode, m, n, A, lda, x, incx, C, ldc)
end

@checked function cublasDdgmm(handle, mode, m, n, A, lda, x, incx, C, ldc)
    initialize_api()
    ccall((:cublasDdgmm, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, Cint, Cint, CuPtr{Cdouble}, Cint,
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, mode, m, n, A, lda, x, incx, C, ldc)
end

@checked function cublasCdgmm(handle, mode, m, n, A, lda, x, incx, C, ldc)
    initialize_api()
    ccall((:cublasCdgmm, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, Cint, Cint, CuPtr{cuComplex}, Cint,
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint),
                   handle, mode, m, n, A, lda, x, incx, C, ldc)
end

@checked function cublasZdgmm(handle, mode, m, n, A, lda, x, incx, C, ldc)
    initialize_api()
    ccall((:cublasZdgmm, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasSideMode_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    Cint, CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, mode, m, n, A, lda, x, incx, C, ldc)
end

@checked function cublasStpttr(handle, uplo, n, AP, A, lda)
    initialize_api()
    ccall((:cublasStpttr, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    Cint),
                   handle, uplo, n, AP, A, lda)
end

@checked function cublasDtpttr(handle, uplo, n, AP, A, lda)
    initialize_api()
    ccall((:cublasDtpttr, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, uplo, n, AP, A, lda)
end

@checked function cublasCtpttr(handle, uplo, n, AP, A, lda)
    initialize_api()
    ccall((:cublasCtpttr, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, uplo, n, AP, A, lda)
end

@checked function cublasZtpttr(handle, uplo, n, AP, A, lda)
    initialize_api()
    ccall((:cublasZtpttr, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, uplo, n, AP, A, lda)
end

@checked function cublasStrttp(handle, uplo, n, A, lda, AP)
    initialize_api()
    ccall((:cublasStrttp, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{Cfloat}, Cint,
                    CuPtr{Cfloat}),
                   handle, uplo, n, A, lda, AP)
end

@checked function cublasDtrttp(handle, uplo, n, A, lda, AP)
    initialize_api()
    ccall((:cublasDtrttp, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{Cdouble}, Cint,
                    CuPtr{Cdouble}),
                   handle, uplo, n, A, lda, AP)
end

@checked function cublasCtrttp(handle, uplo, n, A, lda, AP)
    initialize_api()
    ccall((:cublasCtrttp, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{cuComplex}, Cint,
                    CuPtr{cuComplex}),
                   handle, uplo, n, A, lda, AP)
end

@checked function cublasZtrttp(handle, uplo, n, A, lda, AP)
    initialize_api()
    ccall((:cublasZtrttp, libcublas()), cublasStatus_t,
                   (cublasHandle_t, cublasFillMode_t, Cint, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}),
                   handle, uplo, n, A, lda, AP)
end
# Julia wrapper for header: cublasXt.h
# Automatically generated using Clang.jl

@checked function cublasXtCreate(handle)
    initialize_api()
    ccall((:cublasXtCreate, libcublas()), cublasStatus_t,
                   (Ptr{cublasXtHandle_t},),
                   handle)
end

@checked function cublasXtDestroy(handle)
    initialize_api()
    ccall((:cublasXtDestroy, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t,),
                   handle)
end

@checked function cublasXtGetNumBoards(nbDevices, deviceId, nbBoards)
    initialize_api()
    ccall((:cublasXtGetNumBoards, libcublas()), cublasStatus_t,
                   (Cint, Ptr{Cint}, Ptr{Cint}),
                   nbDevices, deviceId, nbBoards)
end

@checked function cublasXtMaxBoards(nbGpuBoards)
    initialize_api()
    ccall((:cublasXtMaxBoards, libcublas()), cublasStatus_t,
                   (Ptr{Cint},),
                   nbGpuBoards)
end

@checked function cublasXtDeviceSelect(handle, nbDevices, deviceId)
    initialize_api()
    ccall((:cublasXtDeviceSelect, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, Cint, Ptr{Cint}),
                   handle, nbDevices, deviceId)
end

@checked function cublasXtSetBlockDim(handle, blockDim)
    initialize_api()
    ccall((:cublasXtSetBlockDim, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, Cint),
                   handle, blockDim)
end

@checked function cublasXtGetBlockDim(handle, blockDim)
    initialize_api()
    ccall((:cublasXtGetBlockDim, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, Ptr{Cint}),
                   handle, blockDim)
end

@checked function cublasXtGetPinningMemMode(handle, mode)
    initialize_api()
    ccall((:cublasXtGetPinningMemMode, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, Ptr{cublasXtPinnedMemMode_t}),
                   handle, mode)
end

@checked function cublasXtSetPinningMemMode(handle, mode)
    initialize_api()
    ccall((:cublasXtSetPinningMemMode, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasXtPinnedMemMode_t),
                   handle, mode)
end

@checked function cublasXtSetCpuRoutine(handle, blasOp, type, blasFunctor)
    initialize_api()
    ccall((:cublasXtSetCpuRoutine, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasXtBlasOp_t, cublasXtOpType_t, Ptr{Cvoid}),
                   handle, blasOp, type, blasFunctor)
end

@checked function cublasXtSetCpuRatio(handle, blasOp, type, ratio)
    initialize_api()
    ccall((:cublasXtSetCpuRatio, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasXtBlasOp_t, cublasXtOpType_t, Cfloat),
                   handle, blasOp, type, ratio)
end

@checked function cublasXtSgemm(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                beta, C, ldc)
    initialize_api()
    ccall((:cublasXtSgemm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasOperation_t, cublasOperation_t, Csize_t,
                    Csize_t, Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t,
                    PtrOrCuPtr{Cfloat}, Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat},
                    Csize_t),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtDgemm(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                beta, C, ldc)
    initialize_api()
    ccall((:cublasXtDgemm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasOperation_t, cublasOperation_t, Csize_t,
                    Csize_t, Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t,
                    PtrOrCuPtr{Cdouble}, Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble},
                    Csize_t),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtCgemm(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                beta, C, ldc)
    initialize_api()
    ccall((:cublasXtCgemm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasOperation_t, cublasOperation_t, Csize_t,
                    Csize_t, Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex},
                    Csize_t, PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{cuComplex},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZgemm(handle, transa, transb, m, n, k, alpha, A, lda, B, ldb,
                                beta, C, ldc)
    initialize_api()
    ccall((:cublasXtZgemm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasOperation_t, cublasOperation_t, Csize_t,
                    Csize_t, Csize_t, RefOrCuRef{cuDoubleComplex},
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t),
                   handle, transa, transb, m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtSsyrk(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtSsyrk, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t,
                    RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasXtDsyrk(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtDsyrk, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t,
                    RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasXtCsyrk(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtCsyrk, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasXtZsyrk(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtZsyrk, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasXtCherk(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtCherk, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{cuComplex}, Csize_t,
                    RefOrCuRef{Cfloat}, PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasXtZherk(handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtZherk, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    RefOrCuRef{Cdouble}, PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, beta, C, ldc)
end

@checked function cublasXtSsyr2k(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtSsyr2k, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t,
                    PtrOrCuPtr{Cfloat}, Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat},
                    Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtDsyr2k(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtDsyr2k, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t,
                    PtrOrCuPtr{Cdouble}, Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble},
                    Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtCsyr2k(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtCsyr2k, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{cuComplex},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZsyr2k(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtZsyr2k, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtCherkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtCherkx, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{Cfloat},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZherkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtZherkx, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, PtrOrCuPtr{cuDoubleComplex}, Csize_t, RefOrCuRef{Cdouble},
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtStrsm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
    initialize_api()
    ccall((:cublasXtStrsm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t, PtrOrCuPtr{Cfloat},
                    Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasXtDtrsm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
    initialize_api()
    ccall((:cublasXtDtrsm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t, PtrOrCuPtr{Cdouble},
                    Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasXtCtrsm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
    initialize_api()
    ccall((:cublasXtCtrsm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasXtZtrsm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
    initialize_api()
    ccall((:cublasXtZtrsm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb)
end

@checked function cublasXtSsymm(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                ldc)
    initialize_api()
    ccall((:cublasXtSsymm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t,
                    PtrOrCuPtr{Cfloat}, Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat},
                    Csize_t),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtDsymm(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                ldc)
    initialize_api()
    ccall((:cublasXtDsymm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t,
                    PtrOrCuPtr{Cdouble}, Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble},
                    Csize_t),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtCsymm(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                ldc)
    initialize_api()
    ccall((:cublasXtCsymm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{cuComplex},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZsymm(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                ldc)
    initialize_api()
    ccall((:cublasXtZsymm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtChemm(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                ldc)
    initialize_api()
    ccall((:cublasXtChemm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{cuComplex},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZhemm(handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C,
                                ldc)
    initialize_api()
    ccall((:cublasXtZhemm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, side, uplo, m, n, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtSsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtSsyrkx, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t,
                    PtrOrCuPtr{Cfloat}, Csize_t, RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat},
                    Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtDsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtDsyrkx, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t,
                    PtrOrCuPtr{Cdouble}, Csize_t, RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble},
                    Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtCsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtCsyrkx, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{cuComplex},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZsyrkx(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtZsyrkx, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtCher2k(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtCher2k, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, RefOrCuRef{Cfloat},
                    PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtZher2k(handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C,
                                 ldc)
    initialize_api()
    ccall((:cublasXtZher2k, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasFillMode_t, cublasOperation_t, Csize_t,
                    Csize_t, RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t, PtrOrCuPtr{cuDoubleComplex}, Csize_t, RefOrCuRef{Cdouble},
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, uplo, trans, n, k, alpha, A, lda, B, ldb, beta, C, ldc)
end

@checked function cublasXtSspmm(handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtSspmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, Ref{Cfloat}, Ptr{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t,
                    Ref{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t),
                   handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
end

@checked function cublasXtDspmm(handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtDspmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, Ref{Cdouble}, Ptr{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t,
                    Ref{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t),
                   handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
end

@checked function cublasXtCspmm(handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtCspmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, Ref{cuComplex}, Ptr{cuComplex}, PtrOrCuPtr{cuComplex},
                    Csize_t, Ref{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
end

@checked function cublasXtZspmm(handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
    initialize_api()
    ccall((:cublasXtZspmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t, Csize_t,
                    Csize_t, Ref{cuDoubleComplex}, Ptr{cuDoubleComplex},
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t, Ref{cuDoubleComplex},
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t),
                   handle, side, uplo, m, n, alpha, AP, B, ldb, beta, C, ldc)
end

@checked function cublasXtStrmm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                ldb, C, ldc)
    initialize_api()
    ccall((:cublasXtStrmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{Cfloat}, PtrOrCuPtr{Cfloat}, Csize_t, PtrOrCuPtr{Cfloat},
                    Csize_t, PtrOrCuPtr{Cfloat}, Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasXtDtrmm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                ldb, C, ldc)
    initialize_api()
    ccall((:cublasXtDtrmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{Cdouble}, PtrOrCuPtr{Cdouble}, Csize_t, PtrOrCuPtr{Cdouble},
                    Csize_t, PtrOrCuPtr{Cdouble}, Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasXtCtrmm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                ldb, C, ldc)
    initialize_api()
    ccall((:cublasXtCtrmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{cuComplex}, PtrOrCuPtr{cuComplex}, Csize_t,
                    PtrOrCuPtr{cuComplex}, Csize_t, PtrOrCuPtr{cuComplex}, Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

@checked function cublasXtZtrmm(handle, side, uplo, trans, diag, m, n, alpha, A, lda, B,
                                ldb, C, ldc)
    initialize_api()
    ccall((:cublasXtZtrmm, libcublas()), cublasStatus_t,
                   (cublasXtHandle_t, cublasSideMode_t, cublasFillMode_t,
                    cublasOperation_t, cublasDiagType_t, Csize_t, Csize_t,
                    RefOrCuRef{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex}, Csize_t,
                    PtrOrCuPtr{cuDoubleComplex}, Csize_t, PtrOrCuPtr{cuDoubleComplex},
                    Csize_t),
                   handle, side, uplo, trans, diag, m, n, alpha, A, lda, B, ldb, C, ldc)
end

## added in CUDA 11 Update 1

@checked function cublasSetWorkspace_v2(handle, workspace, workspaceSizeInBytes)
    initialize_api()
    ccall((:cublasSetWorkspace_v2, libcublas()), cublasStatus_t, (cublasHandle_t, CuPtr{Cvoid}, Csize_t), handle, workspace, workspaceSizeInBytes)
end
