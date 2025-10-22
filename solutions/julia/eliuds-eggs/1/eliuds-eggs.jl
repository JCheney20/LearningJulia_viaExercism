eggcount(number) = sum(parse.(Int, [egg for egg ∈ split(bitstring(number), "") if egg == "1"]))

