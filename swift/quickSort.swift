// クイックソート
func quickSort(a: [Int]) -> [Int] {
    var arr = a
    func q(head: Int, tail: Int) -> [Int] {
        var i = head
        var j = tail
        var pivot = arr[Int(floor(Double(head + tail) / 2))]
        while true {
            while arr[i] < pivot {
                i += 1
            }
            while pivot < arr[j] {
                j -= 1
            }
            if i >= j {
                break;
            }
            var tmp = arr[i]
            arr[i] = arr[j]
            arr[j] = tmp
            i += 1
            j -= 1
        }
        if head < i - 1 {
            q(head: head, tail: i-1)
        }
        if j + 1 < tail {
            q(head: j+1, tail: tail)
        }
        return arr
    }
    return q(head: 0, tail: arr.count-1)
}
print(quickSort(a: [867, 104, 413, 541, 304, 354, 165, 150]))
