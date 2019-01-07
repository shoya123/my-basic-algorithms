<?php
// バブルソート
function bubbleSort($arr) {
  for ($i = 0, $len = (count($arr)-1); $i < $len; $i++) {
    for ($j = $len; $j > $i; $j--) {
      if ($arr[$j] < $arr[$j-1]) {
        $tmp = $arr[$j];
        $arr[$j] = $arr[$j-1];
        $arr[$j-1] = $tmp;
      }
    }
  }
  return $arr;
}

print_r(bubbleSort([104, 865, 413, 541, 304, 354, 165, 150]));
