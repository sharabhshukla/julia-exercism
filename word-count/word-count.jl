function wordcount(sentence)
    sentence = sentence = replace(lowercase(sentence), r"(?<![a-zA-Z])'|'(?![a-zA-Z])|[^a-zA-Z0-9 ']" => " ")
    word_count = Dict{String, Int}()
    for word ∈ split(sentence)
        word_count[word] = get(word_count, word, 0) + 1
    end
    word_count
end

@show wordcount("one fish two fish red fish blue fish")