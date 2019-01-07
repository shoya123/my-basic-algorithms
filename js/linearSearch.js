// 線形探索
function linearSerch(arr, target) {
  for(var i = 0, len = arr.length; i < len; i++) {
    if(arr[i] === target){
      return i;
    }
  }
  return false;
}

console.log(linearSerch([104, 865, 413, 541, 304, 354, 165, 150], 304));
