// マージソート
package main

import (
	"fmt"
	"math"
)

func main() {
    arr := []int{148, 651, 124, 638, 567, 435, 185, 413, 841, 35};
    fmt.Println(margeSort(arr));
}
func margeSort(arr []int) []int {
    var m func(int, int) []int;
    m = func(head int, tail int) []int {
        if head < tail {
            mid := int(math.Floor(float64(head + tail) / 2));
            m(head, mid);
            m(mid + 1, tail);

            l := make([]int, len(arr[head:mid+1]), (cap(arr[head:mid+1])+1))
            r := make([]int, len(arr[mid+1:tail+1]), (cap(arr[mid+1:tail+1])+1))
            copy(l, arr[head:mid+1]);
            copy(r, arr[mid+1:tail+1]);

            i := head;
            for len(l) > 0 && len(r) > 0 {
                if l[0] <= r[0] {
                    arr[i] = l[0];
                    l = l[1:];
                } else {
                    arr[i] = r[0];
                    r = r[1:];
                }
                i++;
            }
            
            for len(l) > 0 {
                arr[i] = l[0];
                l = l[1:];
                i++;
            }
        }
        return arr;
    }
    return m(0, len(arr)-1);
}
