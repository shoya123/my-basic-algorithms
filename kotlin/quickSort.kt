// クイックソート
fun main(args: Array<String>) {
    var arr = arrayOf(148, 651, 124, 638, 567, 435, 185, 413, 841, 35);
    var result = quickSort(arr);
    for(i in result) println(i)
}

fun quickSort(arr: Array<Int>): Array<Int> {
    return q(arr, 0, arr.size-1);
}

fun q(arr: Array<Int>, head: Int, tail: Int): Array<Int> {
    var i = head;
    var j = tail;
    var pivot = arr[Math.floor((head + tail).toDouble() / 2).toInt()];
    while (true) {
        while (arr[i] < pivot) {
            i++;
        }
        while (pivot < arr[j]) {
            j--;
        }
        if (i >= j) {
            break;
        }
        var tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
        i++;
        j--;
    }
    if (head < i - 1){
        q(arr, head, i - 1);
    }
    if (j + 1 < tail) {
        q(arr, j + 1, tail);
    }
    return arr;
}
