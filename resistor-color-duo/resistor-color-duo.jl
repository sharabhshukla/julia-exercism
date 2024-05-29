"""
    colorcode(color)

Converts a color name or hex code to its corresponding RGB values.

# Arguments
- `color`: A string representing a color name or hex code.

# Returns
- A tuple of three integers representing the RGB values of the color.

# Examples
colorcode("red") -> (255, 0, 0)
"""
function colorcode(colors)
    all_colors = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Grey", "White"]
    color_map = Dict( lowercase(n) => v for (n,v) ∈ zip(all_colors, 0:9))
    resistor_value::Int = 0
    colors = colors[1:2]
    for (i, color) ∈ enumerate(colors[end:-1:1])
        if i > 2
            break
        end
        color = lowercase(color)
        resistor_value  += (10 ^ (i-1)) * get(color_map, color, 0)
    end
    return resistor_value
end


@show colorcode(["green", "brown", "orange"])

@doc colorcode
