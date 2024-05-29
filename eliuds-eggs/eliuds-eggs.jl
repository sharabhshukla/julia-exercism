function eggcount(number)
    bit_repr = bitstring(number)
    return sum([parse(Int, i) for i ∈ bit_repr])   
end


@show eggcount(89)
