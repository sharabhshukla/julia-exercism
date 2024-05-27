using Distributions, Plots
plotlyjs()

α = 5000
c = -0.5
P = 1:0.01:1000;
Q = α .* P .^ c;

#plot(P, Q, label="Q = α * P^c", xlabel="Price", ylabel="Demand", title="Optimal Pricing", legend=true, color="blue")

function lorenz(y)
    n = length(y)
    y = sort(y)
    s = zeros(n + 1)
    s[2:end] = cumsum(y)
    cum_people = zeros(n + 1)
    cum_income = zeros(n + 1)
    for i ∈ 1:n
        cum_people[i] = i / n
        cum_income[i] = s[i] / s[n]
    end
    return cum_people, cum_income
end

w = exp.(rand(1000))
cum_people, cum_income = lorenz(w)

plot(cum_people, cum_income, label="Lorenz Curve", color="red")