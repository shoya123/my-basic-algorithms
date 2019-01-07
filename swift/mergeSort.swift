// マージソート
import Foundation
import Glibc

func margeSort(a: [Int]) -> [Int] {
    var arr = a
    func m(head: Int, tail: Int) {
        if head < tail {
            let mid = Int(floor(Double(head + tail) / 2))
            m(head: head, tail: mid)
            m(head: mid + 1, tail: tail)
    
            var l = arr[head...mid] // インデックスは0番からではなく、headの値からとなる
            var i = head
            var j = mid + 1
            var k = head
            while i <= mid && j <= tail {
                if l[i] <= arr[j] {
                    arr[k] = l[i]
                    i += 1
                } else {
                    arr[k] = arr[j]
                    j += 1
                }
                k += 1
            }
    
            while i <= mid {
                arr[k] = l[i]
                i += 1
                k += 1
            }
        }
    }
    m(head: 0, tail: arr.count-1)
    return arr
}
print(margeSort(a: [867, 104, 413, 541, 304, 354, 165, 150]))
