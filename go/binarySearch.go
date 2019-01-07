// 二分探索
package main

import (
	"fmt"
	"math"
)

func main() {
   fmt.Println(binarySearch([]int{104, 150, 165, 304, 354, 413, 541, 865}, 304));
}

func binarySearch(arr []int, target int) int {
    head := 0;
    tail := len(arr) - 1;
    for head <= tail {
        mid := int(math.Floor(float64(head + tail) / 2));
        if arr[mid] == target {
            return mid;
        } else if arr[mid] < target {
            head = mid + 1;
        } else {
            tail = mid - 1;
        }
    }
    return -1;
}
