// バブルソート
package main

import "fmt"

func main() {
    fmt.Println(bubbleSort([]int{104, 865, 413, 541, 304, 354, 165, 150}));
}
func bubbleSort(arr []int) []int {
    len := len(arr)-1;
    for i := 0; i < len; i++ {
        for j := len; j > i; j-- {
            if arr[j] < arr[j-1] {
                tmp := arr[j];
                arr[j] = arr[j-1];
                arr[j-1] = tmp;
            }
        }        
    }
    return arr;
}
