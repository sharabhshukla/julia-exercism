"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("Strands must have the same length"))
    end
    diff = [s1 == s2 for (s1, s2) ∈ zip(a,b)]
    return count(!, diff)
end


distance("GGACTGA", "GGACTGA")