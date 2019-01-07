
// 二分探索
fun main(args: Array<String>) {
    println(binarySearch(arrayOf(104, 150, 165, 304, 354, 413, 541, 865), 304));
}

fun binarySearch(arr: Array<Int>, target: Int): Int {
    var head = 0
    var tail = arr.size-1
    while (head <= tail) {
        var mid = Math.floor((head + tail).toDouble() / 2).toInt()
        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            head = mid + 1;
        } else {
            tail = mid - 1;
        }
    }
    return -1;
}
