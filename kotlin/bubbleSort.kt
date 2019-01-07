// バブルソート
fun main(args: Array<String>) {
    var result = bubbleSort(arrayOf(104, 865, 413, 541, 304, 354, 165, 150))
    for(i in result) println(i)
}
fun bubbleSort(arr: Array<Int>): Array<Int> {
    for (i in arr.indices) {
        var j = arr.size-1
        while (j > i) {
            if (arr[j] < arr[j-1]) {
                var tmp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = tmp
            }
            j--
        }
    }
    return arr
}
