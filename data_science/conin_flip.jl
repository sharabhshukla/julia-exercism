using Turing, Distributions, StatsPlots

@model function coin_flip(y)
    p ~ Uniform(0, 1)
    N = length(y)
    for n ∈ 1:N
        y[n] ~ Bernoulli(p)
    end
end

n = 100000
coin_flip_samples = rand(Bernoulli(0.5), n)
# Sample from the model
chain = sample(coin_flip(coin_flip_samples), NUTS(), 1000)
histogram(chain[:p])