using Distributions, StatsPlots

p = 0.5;

N = 250

bernouli_samples = rand(Bernoulli(p), N)

scatter(bernouli_samples, normed=true, label="Bernouli Samples", xlabel="Sample Number", ylabel="Value", title="Bernouli Samples", legend=true, color="blue")

(bernouli_samples)