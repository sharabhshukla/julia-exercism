function raindrops(number)
    song = ""
    if number % 3 == 0
        song *= "Pling"
    end
    if number % 5 == 0
        song *= "Plang"
    end
    if  number % 7 == 0
        song *= "Plong"
    elseif !(number % 3 ==0 || number % 5 == 0 || number % 7 == 0)
        song *= string(number)
    end
    song
end

raindrops(15)
