## Problem Six

### Brute Force Solution

```javascript
  function problemSix(n) {
    let sumOfSquares = 0;
    let sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
      sumOfSquares += (i * i);
    }
    return( (sum * sum) - sumOfSquares);
  }

  console.log(problemSix(100));
```

Not too much to day about this solution. It looks through each number from 1 to 100 and:

  1. Adds them up
  2. Adds up their square roots

The sum is then squared, and the sum of the squares is subtracted from it.
