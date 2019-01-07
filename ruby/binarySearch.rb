# 二分探索
def binarySearch(arr, target)
    head = 0
    tail = arr.size - 1
    while head <= tail do
        mid = ((head + tail) / 2).floor
        if arr[mid] == target
            return mid
        elsif arr[mid] < target
            head = mid + 1;
        else
            tail = mid -1;
        end
    end
    return -1
end

print binarySearch([104, 150, 165, 304, 354, 413, 541, 865], 304)
