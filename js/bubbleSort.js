// バブルソート
function bubbleSort(arr) {
  for (let i = 0, len = arr.length-1; i < len; i++) {
    for (let j = len; j > i; j--) {
      if (arr[j] < arr[j-1]) {
        let tmp = arr[j];
        arr[j] = arr[j-1];
        arr[j-1] = tmp;
      }
    }
  }
  return arr;
}
console.log(bubbleSort([104, 865, 413, 541, 304, 354, 165, 150]));