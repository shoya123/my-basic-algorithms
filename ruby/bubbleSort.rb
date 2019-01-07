# バブルソート
def bubbleSort(arr)
    i = 0
    while i < arr.size do
        j = arr.size
        while j > i do
            if arr[j] < arr[j-1]
                tmp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = tmp
            end
            j -= 1
        end
        i += 1
    end
    return arr
end

print bubbleSort([104, 865, 413, 541, 304, 354, 165, 150])
