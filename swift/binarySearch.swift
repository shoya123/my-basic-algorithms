// 二分探索
func binarySearch(arr: [Int], target: Int) -> Int {
    var head = 0
    var mid = 0
    var tail = arr.count - 1;
    while head <= tail {
        mid = Int(floor(Double(head + tail) / 2))
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

print(binarySearch(arr: [104, 150, 165, 304, 354, 413, 541, 865], target: 304))
