using StaticArrays, Compat
if VERSION > v"0.7-"
    using Test
    using Random
    using LinearAlgebra
else
    using Base.Test
    using Base.Random
    const LinearAlgebra = Base.LinAlg
    const Adjoint = RowVector
end

# We generate a lot of matrices using rand(), but unit tests should be
# deterministic. Therefore seed the RNG here (and further down, to avoid test
# file order dependence)
srand(42)

include("testutil.jl")
include("SVector.jl")
include("MVector.jl")
include("SMatrix.jl")
include("MMatrix.jl")
include("SArray.jl")
include("MArray.jl")
include("FieldVector.jl")
include("Scalar.jl")
include("SUnitRange.jl")
include("SizedArray.jl")
include("SDiagonal.jl")

include("custom_types.jl")
include("core.jl")
include("abstractarray.jl")
include("indexing.jl")
srand(42); include("mapreduce.jl")
srand(42); include("arraymath.jl")
include("broadcast.jl")
include("linalg.jl")
srand(42); include("matrix_multiply.jl")
srand(42); include("triangular.jl")
include("det.jl")
include("inv.jl")
srand(42); include("solve.jl")
srand(44); include("eigen.jl")
include("expm.jl")
include("sqrtm.jl")
include("lyap.jl")
include("lu.jl")
srand(42); include("qr.jl")
srand(42); include("chol.jl")
include("deque.jl")
include("io.jl")
include("svd.jl")
srand(42); include("fixed_size_arrays.jl")
