// バブルソート
using System.IO;
using System;

class Program {
    static void Main() {
        int[] arr = { 104,865,413,541,304,354,165,150 };
        Console.WriteLine(string.Join(", ", bubbleSort(arr)));
    }

    static int[] bubbleSort(int[] arr) {
        int len  = arr.Length - 1;
        for (int i = 0; i < len; i++) {
            for (int j = len; j > i; j--) {
                if(arr[j] < arr[j-1]) {
                    int tmp = arr[j];
                    arr[j] = arr[j-1];
                    arr[j-1] = tmp;
                }
            }
        }
        return arr;
    }
}
