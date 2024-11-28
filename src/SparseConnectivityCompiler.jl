module SparseConnectivityCompiler

using Base.Meta: isexpr
using Core.Compiler: Argument, SSAValue
using MistyClosures

const CC = Core.Compiler

include("tracer.jl")
include("ir.jl")

export Tracer
export sparse_ir, sparse_rule

end # module SparseConnectivityCompiler
