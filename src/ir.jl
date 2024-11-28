function sparse_ir(f, args...)
    ir = Base.code_ircode(f, typeof.(args))[1][1]
    sparse_ir = CC.copy(ir)
    for i in 1:length(ir.stmts)
        inst = CC.getindex(ir, SSAValue(i))
        stmt = inst[:stmt]
        if stmt isa Expr
            nothing
        end
    end
    return ir, sparse_ir
end

sparse_rule(f, args...) = MistyClosure(sparse_ir(f, args...)[2])
