## Problem Six

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
