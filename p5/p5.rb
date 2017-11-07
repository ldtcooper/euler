def p5
  current_num = 2520 # test case result
  until divisible?(current_num)
    current_num += 20
  end
  current_num
end

def divisible?(num)
  nums = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]
  nums.all? { |el| num % el == 0 }
end

p p5
