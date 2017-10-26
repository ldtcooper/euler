def largest_prime_factor(n)
  square = Math.sqrt(n).to_i
  i = 3
  prime_factors = []

  while i <= square
    while n % i == 0
      n /= i
    end
    prime_factors << n if n > 2
    i += 2
  end
  prime_factors
end

p largest_prime_factor(600851475143).last
