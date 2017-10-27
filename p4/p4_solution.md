## Problem Four

```ruby
def longest_palindromic_number
  lpn = 0
  999.downto(100) do |a|
    999.downto(100) do |b|
      prod = a * b
      lpn = prod if palindromic_number?(prod) && prod > lpn
    end
  end
  lpn
end

def palindromic_number?(num)
  str = num.to_s
  str == str.reverse
end

p longest_palindromic_number
```

This one took me a little while due to some faulty logic. I started with just the palindrome test and the nested loops, assuming that the first palindromic number that the function hit would be the answer. Hint: it isn't.
I don't think this is the most efficient way to solve this problem. It has a time complexity of O(n^2), and because of the nature of the problem, I doubt caching (to prevent both a * b and b * a being calculated) would be of very much help. I guess I will just have to do some reading into palindromic numbers.
