# 二分探索
import math
def binarySearch(arr, target):
    head = 0
    tail = len(arr) - 1
    while head <= tail:
        mid = math.floor((head + tail) / 2)
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            head = mid + 1
        else:
            tail = mid - 1
    return False

print(binarySearch([104, 150, 165, 304, 354, 413, 541, 865], 304))
