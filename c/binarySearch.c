// 二分探索
#include <stdio.h>
#include <math.h>

int binarySearch(int arr[], int len, int target) {
    int head = 0;
    int tail = len - 1;
    while (head <= tail) {
        double tmp = (head + tail) / 2;
        int mid = (int) floor(tmp);
        if(arr[mid] == target) {
            return mid;    
        } else if(arr[mid] < target) {
            head = mid + 1;
        } else {
            tail = mid - 1;
        }
    }
    return -1;
}

int main() {
    int arr[] = {104, 150, 165, 304, 354, 413, 541, 865};
    printf("%d", binarySearch(arr, 8, 304));
    
    return 0;
}