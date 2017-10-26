# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

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
