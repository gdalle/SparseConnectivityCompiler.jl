struct Tracer
    inds::Set{Int}
end

Base.:+(a::Tracer, b::Tracer) = Tracer(a.inds ∪ b.inds)
Base.:*(a::Tracer, b::Tracer) = Tracer(a.inds ∪ b.inds)

sparse_rule(::typeof(+), args...) = +(args...)
sparse_rule(::typeof(*), args...) = *(args...)
