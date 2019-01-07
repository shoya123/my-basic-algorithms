// 線形探索
using System.IO;
using System;

class Program {
    static void Main() {
        int[] arr = { 104,865,413,541,304,354,165,150 };
        Console.WriteLine(linearSearch(arr, 304));
    }
    static int linearSearch (int[] arr, int target) {
        for (int i = 0; i < arr.Length; i++) {
            if (arr[i] == target) {
                return i;
            }
        }
        return -1;
    }
}
