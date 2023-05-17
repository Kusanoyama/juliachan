function uwufy(text::AbstractString)
    r = [
        r"r|l" => "w",
        r"n([aueo])" => s"ny\1",
        r" the" => " da",
        r"y " => "ie "
    ]
    return replace(text, r[1], r[2], r[3], r[4]) #* " u-uwu.."
end