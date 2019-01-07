<?php
// クイックソート
function quickSort($arr) {
  function q($arr, $head, $tail) {
    $i = $head;
    $j = $tail;
    $pivot = $arr[floor(($head + $tail) / 2)];
    
    for ( ; ; ) {
      while ($arr[$i] < $pivot) {
        $i++;
      }
      while ($pivot < $arr[$j]) {
        $j--;
      }
      if ($i >= $j) {
        break;
      }
      $tmp = $arr[$i];
      $arr[$i] = $arr[$j];
      $arr[$j] = $tmp;  
      $i++;
      $j--;
    }
    if ($head < $i - 1) {
      q($arr, $head, $i-1);
    }
    if ($j + 1 < $tail) {
      q($arr, $j+1, $tail);
    }
    return $arr;
  }
  return q($arr, 0, count($arr)-1);
}
$arr = array(651, 148 , 124, 638, 567, 435, 185, 413, 841, 35);
print_r(quickSort($arr));
