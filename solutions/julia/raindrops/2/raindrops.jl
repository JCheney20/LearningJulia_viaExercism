function raindrops(number)
    s = ""
    s *= number % 3 == 0 ? "Pling" : ""
    s *= number % 5 == 0 ? "Plang" : ""
    s *= number % 7 == 0 ? "Plong" : ""
    s == "" ? string(number) : s
end
