// クイックソート
using System.IO;
using System;

class Program {
    static void Main() {
        int[] arr = {148, 651, 124, 638, 567, 435, 185, 413, 841, 35};
        Console.WriteLine(string.Join(", ", quickSort(arr)));
    }
    
    static int[] quickSort(int[] arr) {
        Func<int, int, int[]> q = null;
        q = (head, tail) => {
            int i = head;
            int j = tail;
            int pivot = arr[(int)Math.Floor((double)(head + tail) / 2)];

            for ( ; ; ) {
                while (arr[i] < pivot) {
                    i++;
                }
                while (pivot < arr[j]) {
                    j--;
                }
                if (i >= j) {
                    break;
                }
                int tmp = arr[i];
                arr[i] = arr[j];
                arr[j] = tmp;
                i++;
                j--;
            }
            if(head < i - 1) {
                q(head, i - 1);
            }
            if (j + 1 < tail) {
                q(j + 1, tail);
            }
            return arr;
        };
        q(0, arr.Length-1);
        return arr;
    }
}
