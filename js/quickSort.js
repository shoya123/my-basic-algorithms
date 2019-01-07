// クイックソート
function quickSort(arr) {
  let q = (head, tail) => {
    let i = head;
    let j = tail;
    let pivot = arr[Math.floor((head + tail) / 2)];
    let tmp;
    for ( ; ; ) {
      while (arr[i] < pivot) {
        i++;
      }
      while (pivot < arr[j]) {
        j--;
      }
      if (i >= j) {
        break;
      }
      tmp = arr[i];
      arr[i] = arr[j];
      arr[j] = arr[i];
      i++;
      i--;
    }
    if (head < i - 1) {
      q(head, i-1);
    }
    if (j + 1 < tail) {
      q(j + 1, tail);
    }
    return arr;
  }
}

console.log(quickSort([148, 651, 124, 638, 567, 435, 185, 413, 35]));
