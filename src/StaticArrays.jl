module StaticArrays

import Base: @pure, @propagate_inbounds, getindex, setindex!, size,
             length, convert, promote_op, map, reduce, mapreduce,
             broadcast, conj, transpose, ctranspose, hcat, vcat

export StaticArray, StaticVector, StaticMatrix
export SArray, SVector, SMatrix
export MArray, MVector, MMatrix
export FieldVector, MutableFieldVector

export @SVector, @SMatrix, @SArray
export @MVector, @MMatrix, @MArray

export similar_type

include("util.jl")

include("core.jl")
include("SVector.jl")
include("FieldVector.jl")
include("SMatrix.jl")
include("SArray.jl")
include("MVector.jl")
include("MMatrix.jl")
include("MArray.jl")


include("indexing.jl")
include("abstractarray.jl")
include("mapreduce.jl")
include("arraymath.jl")
include("linalg.jl")
include("matrix_multiply.jl")

# TODO list
# ---------
#
# * map!, broadcast!
#
# * reshape() - accept Val? Currently uses `ReshapedArray`. Cool :)
#
# * permutedims() - accept Val? Or wait for `PermutedDimsArray` ?
#
# * Linear algebra - matrix functions (det, inv, eig, svd, qr, etc...)
#
# * @fsa-like macros for easily making matrices, @SMatrix and @MMatrix.


end # module