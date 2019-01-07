<?php
// 線形探索
function linear_Search($arr, $target) {
  for ($i = 0, $len = count($arr); $i <= $len; $i++) {
    if ($arr[$i] == $target) {
      return $i;
    }
  }
  return false;
}

echo linear_Search([104, 865, 413, 541, 304, 354, 165, 150], 304);
