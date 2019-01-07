<?php
// マージソート
function margeSort(&$arr) {
  function m (&$arr, $head, $tail) {
    if ($head < $tail) {
      $mid = floor(($head + $tail) / 2);
      m($arr, $head, $mid);
      m($arr, $mid+1, $tail);
  
      $l = array_slice($arr, $head, $mid+1 - $head);
      $r = array_slice($arr, $mid+1, ($tail - $mid));
      $i = $head;
      while (count($l) > 0 && count($r) > 0) {
        if ($l[0] <= $r[0]) {
          $arr[$i++] = array_shift($l);
        } else {
          $arr[$i++] = array_shift($r);
        }
      }
      while (count($l) > 0) {
        $arr[$i++] = array_shift($l);
      }
    }
    return $arr;
  }
  return m($arr, 0, count($arr)-1);
}

$arr = array(651, 148 , 124, 638, 567, 435, 185, 413, 841, 35);
print_r(margeSort($arr));
