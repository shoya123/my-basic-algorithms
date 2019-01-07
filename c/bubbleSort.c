// バブルソート
#include <stdio.h>

void bubbleSort(int arr[], int len)
{
    len -= 1;
    for (int i = 0; i < len; i++) {
        for(int j = len; j > i; j--){
            if(arr[j] < arr[j-1]){
                int tmp = arr[j];
                arr[j] = arr[j-1];
                arr[j-1] = tmp;
            }
        }
    }
}

int main() {
    int arr[] = {104, 865, 413, 541, 304, 354, 165, 150};
    bubbleSort(arr, 8);
    for (int i = 0; i < 8; i++) {
        printf("%d\n", arr[i]);    
    }
    return 0;
}
