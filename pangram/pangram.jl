"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    input = lowercase(input)
    input = [x for x in input if isletter(x)]
    input_set = Set(input)
    input_set == Set('a':'z') && length(input_set) == 26
end

