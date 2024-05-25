"Square the sum of the first `n` positive integers"
function square_of_sum(n::Union{Int, Nothing}=0)::Int
    if n >= 0
        return sum(1:n) ^ 2
    else
        return 0
    end
end

"Sum the squares of the first `n` positive integers"
function sum_of_squares(n::Union{Int, Nothing}=0)::Int
    if n >= 0
        return sum([i ^ 2 for i ∈ 1:n])
    else
        return 0
    end

end

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
function difference(n::Union{Int, Nothing}=0)::Int
    return  square_of_sum(n) - sum_of_squares(n)
end
