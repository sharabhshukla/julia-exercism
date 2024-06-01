function to_rna(dna)
    reverse_rna_dict = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    rna = ""
    for each_segment in dna
        if haskey(reverse_rna_dict, each_segment)
            rna *= reverse_rna_dict[each_segment]
        else
            throw(ErrorException("Invalid DNA"))
        end
    end
    return rna
end


to_rna("C")

