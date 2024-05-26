function allergic_to(score, allergen)
    all_allergens = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
    score_decoded = bitstring(score)[end:-1:1]
    alergens = Vector{String}()
    for (i, allergen) in enumerate(score_decoded)
        if allergen == '1' && i <= length(all_allergens)
            push!(alergens, all_allergens[i])
        end
    end
    Set(alergens)
    allergen ∈ alergens
end

function allergy_list(score)
    all_allergens = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
    score_decoded = bitstring(score)[end:-1:1]
    alergens = Vector{String}()
    for (i, allergen) in enumerate(score_decoded)
        if allergen == '1' && i <= length(all_allergens)
            push!(alergens, all_allergens[i])
        end
    end
    Set(alergens)
end

@show allergy_list(509)


