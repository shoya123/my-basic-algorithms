#include <stdio.h>
// 線形探索
int linearSearch(int *arr, int target)
{
    for(int i = 0; i < 8; ++i){
        if(arr[i] == target)
        {
            return i;
        }
    }
    return -1;
}

int main()
{
    int arr[] = {104,865,413,541,304,354,165,150};
    printf("%d", linearSearch(arr, 304));
    
    return 0;
}
