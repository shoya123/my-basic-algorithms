# クイックソート
import math
def quickSort(arr):
    def q(head, tail):
        i = head
        j = tail
        pivot = arr[math.floor((head + tail) / 2)]
        while True:
            while arr[i] < pivot:
                i += 1
            while pivot < arr[j]:
                j -= 1
            if i >= j:
                break
            tmp = arr[i]
            arr[i] = arr[j]
            arr[j] = tmp
            i += 1
            j -= 1
        if head < i - 1:
            q(head, i-1)
        if j + 1 < tail:
            q(j+1, tail)
        return arr
    return q(0, len(arr)-1)

print(quickSort([104, 865, 413, 541, 304, 354, 165, 150]))
