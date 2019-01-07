// 二分探索
using System.IO;
using System;

class Program {
    static void Main() {
        int[] arr = { 104, 150, 165, 304, 354, 413, 541, 865 };
        Console.WriteLine(binarySearch(arr, 304));
    }

    static int binarySearch(int[] arr, int target) {
        int head = 0;
        int tail = arr.Length - 1;
        while (head <= tail) {
            int mid = (int)Math.Floor((double)(head + tail) / 2);
            if (arr[mid] == target) {
                return mid;
            } else if(arr[mid] < target) {
                head = mid + 1;
            } else {
                tail = mid - 1;
            }
        }
        return -1;
    }
}
