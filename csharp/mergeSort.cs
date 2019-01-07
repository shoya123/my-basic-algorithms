// マージソート
using System.IO;
using System;

class Program {
    static void Main() {
        int[] arr = {148, 651, 124, 638, 567, 435, 185, 413, 841, 35};
        Console.WriteLine(string.Join(", ", margeSort(arr)));
    }

    static int[] margeSort(int[] arr) {
        Func<int, int, int[]> m = null;
        m = (head, tail) => {
            if (head < tail) {
                int mid = (int)Math.Floor((double)(head + tail) / 2);
                m(head, mid);
                m(mid + 1, tail);
        
                int[] l = new int[mid+1-head];
                Array.Copy(arr, head, l, 0, mid+1-head);
                int i = 0;
                int j = mid + 1;
                int k = head;
                while (i < l.Length && j <= tail) {
                    if (l[i] <= arr[j]) {
                        arr[k++] = l[i++];
                    } else {
                        arr[k++] = arr[j++];
                    }
                }

                while (i < l.Length) {
                    arr[k++] = l[i++];
                }
            }
            return arr;
        };
        m(0, arr.Length-1);
        return arr;
    }
}
