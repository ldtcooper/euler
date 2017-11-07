def prime_factorization(num)
  factors = []

  while num.even?
    factors.push(2)
    num /= 2
  end

  3.upto(Math.sqrt(num)) do |el|
    next if el.even?

    while num % el == 0
      factors.push(el)
      num /= el
    end
  end

  factors.push(num) if num > 2

  factors
end
