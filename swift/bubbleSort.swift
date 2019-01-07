// バブルソート
func bubbleSort(a: [Int]) -> [Int] {
    var arr = a // 引数の配列は定数となってしまう
    for i in 0 ..< arr.count {
        var j = arr.count-1
        while j > i {
            if arr[j] < arr[j-1] {
                let tmp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = tmp
            }
            j -= 1
        }
    }
    return arr
}

print(bubbleSort(a: [104, 865, 413, 541, 304, 354, 165, 150]))
