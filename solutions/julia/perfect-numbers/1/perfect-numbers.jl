getaliquot(n) = ∑([num for num ∈ 1:n-1 if n % num == 0])
isperfect(n) = n > 0 ? n == getaliquot(n) : throw(DomainError(n, "Value is not a natural number"))
isabundant(n) = n > 0 ? n < getaliquot(n) : throw(DomainError(n, "Value is not a natural number"))
isdeficient(n) = n > 0 ? n > getaliquot(n) : throw(DomainError(n, "Value is not a natural number"))
