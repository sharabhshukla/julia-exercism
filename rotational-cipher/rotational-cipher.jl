# Rotational cipher

function rotate(shift::Int, s::Union{String, Char})
    result = ""
    for c in s
        if isletter(c)
            base = isuppercase(c) ? Int('A') : Int('a')
            result *= Char((Int(c) - base + shift) % 26 + base)
        else
            result *= c
        end
    end
    return s isa Char ? result[1] : result
end


@show rotate(0, "a")
@show rotate(0, 'a')