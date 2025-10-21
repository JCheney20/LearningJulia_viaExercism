function raindrops(number)
    s = ""
    s = number % 3 == 0 ? s * "Pling" : s
    s = number % 5 == 0 ? s * "Plang" : s
    s = number % 7 == 0 ? s * "Plong" : s
    s = s == "" ? string(number) : s
    return s
end
