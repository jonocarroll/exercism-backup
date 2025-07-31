using OrderedCollections

conv = OrderedDict(
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
)

function to_roman(arabic::Int)

    if arabic < 1 || arabic > 3999
        error("Must be between 1 and 3999")
    end

    y = [""]
    for (k, v) in conv
        while (arabic >= v)
            arabic -= v
            push!(y, k)
        end
    end
    reduce(*, y)
end