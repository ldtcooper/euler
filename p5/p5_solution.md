## Problem Five

```ruby
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
```

This solution is a optimized brute force solution inspired by [this Stack Overflow thread](https://stackoverflow.com/questions/8024911/project-euler-5-in-python-how-can-i-optimize-my-solution). Basically, it is looking for the smallest number divisible by all the numbers between 1 and 20 (inclusive). As part of the question, I am given the solution for the smallest number divisible by all the numbers 1-10: 2520. Starting there, I check in increments of 20 (the largest step we can make) whether numbers are divisible by all the numbers 1-20. However, I don't need to check all the numbers from 1-20. I can leave 1 out for obvious reasons. Additionally, I know that any number divisible by 20 will also be divisible by 10, 5, 4, and 2. Moving backwards from 20, I can trim (by half) the list of numbers I need to look at for each iteration.
