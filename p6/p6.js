function problemSix(n) {
  let sumOfSquares = 0;
  let sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
    sumOfSquares += (i * i);
  }
  return( (sum * sum) - sumOfSquares);
}

// function problemSix() {
//   let squareSums = squareOfSums(100);
//   let sumSquares = sumOfSquares(100);
//   return sumSquares - squareSums;
// }
//
// function squareOfSums(n) {
//   let sum = (1 * (n + 1)) / 2;
//   return sum * sum;
// }
//
// function sumOfSquares(n) {
//   let a = (n * n * n) / 3;
//   let b = (n * n) / 2;
//   let c = n / 6;
//   return a + b + c;
// }

console.log(problemSix(100));
