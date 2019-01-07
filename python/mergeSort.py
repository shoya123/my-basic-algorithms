# マージソート
import math
def margeSort(arr):
    def m(head, tail):
        if head < tail:
            mid = math.floor((head + tail) / 2)
            m(head, mid)
            m(mid + 1, tail)
            
            l = arr[head: mid + 1]
            r = arr[mid+1: tail+1]
            k = head
            while len(l) > 0 and len(r) > 0:
                if l[0] <= r[0]:
                    arr[k] = l.pop(0)
                else:
                    arr[k] = r.pop(0)
                k += 1
            
            while len(l) > 0:
                arr[k] = l.pop(0)
                k += 1
        return arr
    return m(0, len(arr)-1)

arr = [104, 865, 413, 541, 304, 354, 165, 150]
print(margeSort(arr))
