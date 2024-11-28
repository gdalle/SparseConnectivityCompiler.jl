using SparseConnectivityCompiler

function f(x::Vector)
    if x[1] > 0
        return x[2] + x[3]
    else
        return x[4] * x[5]
    end
end

x = rand(10);
xt = Tracer.(Set.(eachindex(x)));

ir, sir = sparse_ir(f, xt)
