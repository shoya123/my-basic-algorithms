# バブルソート
def bubbleSort(arr):
    for i in range(len(arr)):
        j = len(arr)-1
        while j > i:
            if arr[j] < arr[j-1]:
                tmp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = tmp
            j -= 1
    return arr

print(bubbleSort([104, 865, 413, 541, 304, 354, 165, 150]))
