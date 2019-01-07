<?php
// 二分探索
function binarySearch($arr, $target) {
  $head = 0;
  $tail = count($arr) - 1 ;
  while ($head <= $tail) {
    $mid = floor(($head + $tail) / 2);
    if ($arr[$mid] === $target) {
      return $mid;
    } else if ($arr[$mid] < $target) {
      $head = $mid + 1;
    } else {
      $tail = $mid -1;
    }
  }
  return -1;
}

echo (binarySearch([104, 150, 165, 304, 354, 413, 541, 865], 304));
