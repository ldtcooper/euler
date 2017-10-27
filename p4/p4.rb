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
