// 二分探索
function binarySearch(arr, target) {
  let head = 0,
      mid,
      tail = arr.length;

  while(head <= tail){
    mid = Math.floor((head + tail) / 2);
    if (arr[mid] === target) {
      return mid;
    } else if(arr[mid] < target) {
      head = mid + 1;
    } else {
      tail = mid -1;
    }
  }
  return -1;
}
console.log(binarySearch([104, 150, 165, 304, 354, 413, 541, 865], 304));
