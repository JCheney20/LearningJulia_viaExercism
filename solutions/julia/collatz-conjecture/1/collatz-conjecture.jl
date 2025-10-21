function collatz_steps(n, steps=0)
    if n < 1
        throw(DomainError(n, "Value is not a postive number"))
    end
    if n == 1
        return steps
    elseif n % 2 == 0
        return collatz_steps(n ÷ 2, steps + 1)
    else
        return collatz_steps((n * 3) + 1, steps + 1)
    end
end
