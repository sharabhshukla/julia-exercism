function score(x::Number, y::Number)::Int
    radius::Float32 = sqrt(x ^ 2 + y ^ 2)
    points_map = Dict(1 => 10, 5 => 5, 10 => 1)
    for k ∈ sort(collect(keys(points_map)))
        if radius <= k
            return points_map[k]
        end
    end
    return 0
end

new_score = score(0.7, 0.7)
println(new_score)


