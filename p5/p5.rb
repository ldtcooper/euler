def solution_finder
  primes_list = [2, 3, 5, 7, 11, 13, 17, 19]
  big_product = primes_list.reduce(:*)
  20.upto(big_product) do |el|
    return el if division_check(el)
  end
end

def division_check(num)
  primes_list.all? { |el| num % el == 0 }
end

p solution_finder
