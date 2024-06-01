function isisogram(s)
    s = replace(s, [' ', '-'] => "")
    s = lowercase(s)
    length(Set(s)) == length(s)
end


isisogram("six-year-old")
