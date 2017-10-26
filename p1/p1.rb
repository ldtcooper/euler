# Problem One
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def p1
  (1...1000).reduce(0) do |acc, el|
    if el % 5 == 0 || el % 3 == 0
      acc + el
    else
      acc
    end
  end
end
