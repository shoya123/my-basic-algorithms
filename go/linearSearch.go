// 線形探索
package main

import "fmt"

func main() {
   fmt.Println(linearSearch([]int{104, 865, 413, 541, 304, 354, 165, 150}, 304));
}

func linearSearch(arr []int, target int) int {
    for i, _ := range arr {
        if arr[i]  == target {
            return i;
        }
    }
    return -1;
}
