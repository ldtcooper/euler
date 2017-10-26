## Problem Three

```ruby
def prime_factors(n)
  square = Math.sqrt(n).to_i
  i = 3
  prime_factors = []

  while n % 2 == 0
    n /= 2
  end

  while i <= square
    while n % i == 0
      n /= i
    end
    prime_factors << n if n > 2
    i += 2
  end
  prime_factors
end

p prime_factors(600851475143).last
```

This solution was based off of Geeks for Geeks' solution [here](http://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/), so I'm going to try and explain it in my own words.

This algorithm starts by dividing the the input (n) by two until we get an odd number (new n), because the largest prime factor cannot be even. We then take the square root of that odd factor, because we know that the largest factor (ignoring primeness) of a number will be its square root. Therefore, the largest prime factor must be less than or equal to the square root. We then begin to test each number between 3 and that square root (i). If any of those numbers divide evenly into n, then we know that n is not a prime factor, so we divide n by i until n can no longer be divided evenly by i. If we get to the end of that process and have a number larger than 2, we know we have a prime factor of the original n. 
