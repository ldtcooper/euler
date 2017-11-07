require_relative 'prime_factorization.rb'

def p5
  big_prod = (2..20).reduce(:*)
  big_prod_factors = prime_factorization(big_prod)
  big_prod_factors.reduce(:*)
end

p p5
