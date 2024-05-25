function twofer(name::Union{String, Nothing}=nothing)
    if name isa Nothing
        return "One for you, one for me."
    else
        return "One for $name, one for me."
    end
end
