## Problem Three

```ruby
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
```

This solution was based off of Geeks for Geeks' solution [here](http://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/), so I'm going to try and explain it in my own words.
