// クイックソート
package main

import (
	"fmt"
	"math"
)

func main() {
    arr := []int{148, 651, 124, 638, 567, 435, 185, 413, 841, 35};
    fmt.Println(quickSort(arr));
}
func quickSort(arr []int) []int {
    var q func(int, int) []int;
    q = func(head int, tail int) []int {
        i := head;
        j := tail;
        pivot := arr[int(math.Floor(float64(head + tail) / 2))];
        tmp := 0;
        for{
            for arr[i] < pivot {
                i++;
            }
            for pivot < arr[j] {
                j--;
            }
            if i >= j {
                break;
            }
            tmp = arr[i];
            arr[i] = arr[j];
            arr[j] = tmp;
            i++
            j--;
        }
        if head < i-1 {
            q(head, i-1);
        }
        if j+1 < tail {
            q(j+1, tail);
        }
        return arr;
    }
    return q(0, len(arr)-1);
}
