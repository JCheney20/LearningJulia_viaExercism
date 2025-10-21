getaliquot(n) = n > 0 ? ∑([num for num ∈ 1:n-1 if n % num == 0]) : throw(DomainError(n, "Value is not a natural number"))
isperfect(n) = n == getaliquot(n)
isabundant(n) = n < getaliquot(n)
isdeficient(n) = n > getaliquot(n)
