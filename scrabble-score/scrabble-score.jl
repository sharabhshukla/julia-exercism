function get_from_mydict(data_container::Dict{Vector{Char}, Int}, c::Char)
    for (k,v) in data_container
        if c ∈ k
            return v
        end
    end
    return 0
end




function score(str)
    base_ref = Dict(['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1)
    base_ref[['D', 'G']] = 2
    base_ref[['B', 'C', 'M', 'P']] = 3
    base_ref[['F', 'H', 'V', 'W', 'Y']] = 4
    base_ref[['K']] = 5
    base_ref[['J', 'X']] = 8
    base_ref[['Q', 'Z']] = 10
    sum([get_from_mydict(base_ref, c) for c ∈ uppercase(str)])
end


score("zoo")