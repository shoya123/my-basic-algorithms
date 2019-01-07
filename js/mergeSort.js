// マージソート
function margeSort(arr, head, tail) {
  let m = (head, tail) => {
    if (head < tail) {
      let mid = Math.floor((head + tail) / 2);
      m(head, mid);
      m(mid+1, tail);
  
      let l = arr.slice(head, mid+1);
      let r = arr.slice(mid+1, tail+1);
      let i = head;
      while (l.length > 0 && r.length > 0) {
        if (l[0] <= r[0]) {
          arr[i++] = l.shift();
        } else {
          arr[i++] = r.shift();
        }
      }
      while (l.length > 0) {
        arr[i++] = l.shift();
      }
    }
    return arr;
  }

  m(0, arr.length-1);
  return arr;
}
console.log(margeSort([148, 651, 124, 638, 567, 435, 185, 413, 35]));
