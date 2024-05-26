function secret_handshake(code)
    code_to_actions = Dict(0 => "", 1 => "wink", 2 => "double blink", 3 => "close your eyes", 4 => "jump", 5 => reverse!)
    digital_code = bitstring(code)[end:-1:1]
    actions = Vector{String}()
    for (i,bit) ∈ enumerate(digital_code)
        if i == 5 && parse(Int, bit) == 1
            reverse!(actions)
        elseif parse(Int, bit) == 1 && i < 5
            push!(actions, code_to_actions[i])
        end
    end
    actions
end


@show secret_handshake(31) == ["jump", "close your eyes", "double blink", "wink"]
