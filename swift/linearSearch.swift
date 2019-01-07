// 線形探索
func linearSearch(arr: [Int], target: Int) -> Int {
    for i in 0 ..< arr.count {
        if arr[i] == target {
            return i;
        }
    }
    return -1;
}

print(linearSearch(arr: [104, 865, 413, 541, 304, 354, 165, 150], target: 304));
