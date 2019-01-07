// マージソート
fun main(args: Array<String>) {
    var arr = arrayOf(148, 651, 124, 638, 567, 435, 185, 413, 841, 35);
    var result = margeSort(arr);
    for(i in result) println(i)
}

fun margeSort(arr: Array<Int>): Array<Int> {
    return m(arr, 0, arr.size-1);
}

fun m(arr: Array<Int>, head: Int, tail: Int): Array<Int> {
    if (head < tail) {
        var mid = Math.floor((head + tail).toDouble() / 2).toInt();
        m(arr, head, mid);
        m(arr, mid + 1, tail);
        
        var l = arr.sliceArray(head..(mid));
        var i = 0;
        var j = mid + 1;
        var k = head;
        while (i < l.size && j <= tail) {
            if (l[i] <= arr[j]) {
                arr[k++] = l[i++];
            } else {
                arr[k++] = arr[j++];
            }
        }
        
        while (i < l.size){
            arr[k++] = l[i++];
        }
    }
    return arr;
}
