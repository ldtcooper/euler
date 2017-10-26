## Problem Two

```ruby
$cache = { 0 => 1, 1 => 1 }

def fib(n)
  $cache[n] = fib(n - 1) + fib(n - 2) unless $cache.key?(n)
  $cache[n]
end

def solver
  i = 2
  sum = 0

  loop do
    current_num = fib(i)
    break if current_num >= 4_000_000
    i += 1
    sum += current_num if current_num.even?
  end
  sum
end

p solver
```

This solution uses a global variable hash to store previously seen Fibonacci numbers and reduce the amount of time it takes to generate Fibonacci numbers. It has a function to recursively generate any given Fibonacci number, and another to do this until the number is greater than 4,000,000. 
