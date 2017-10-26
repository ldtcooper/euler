## Problem One

```ruby
(1...1000).reduce(0) do |acc, el|
  if el % 5 == 0 || el % 3 == 0
    acc + el
  else
    acc
  end
```

This solution simply iterates over the set of numbers from 1 to 999 and adds onto a running sum all the numbers that can be evenly divided into 5 or 3. Since it only iterates once, it should be solved in O(n) time.
