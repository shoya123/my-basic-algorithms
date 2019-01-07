// 線形探索
fun main(args: Array<String>) {
    println(linearSearch(arrayOf(104,865,413,541,304,354,165,150), 304));
}

fun linearSearch(arr: Array<Int>, target: Int): Int {
    for(i in arr.indices){
        if(arr[i] == target) {
            return i;
        }
    }
    return -1;
}
