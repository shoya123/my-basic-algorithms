# クイックソート
def quickSort(arr)
    # 内部メソッドだが、スコープはトップレベル
    def q(arr, head, tail)
        i = head
        j = tail
        pivot = arr[((head + tail) / 2).floor]

        while true
            while arr[i] < pivot
                i += 1
            end
            while pivot < arr[j]
                j -= 1
            end
            if i >= j
                break
            end
            tmp = arr[i]0
            arr[i] = arr[j]
            arr[j] = tmp
            i += 1
            j -= 1
        end
        if head < i - 1
            q(arr, head, i-1)
        end
        if j + 1 < tail
            q(arr, j+1, tail)
        end
        return arr
    end
    return q(arr, 0, arr.size-1)
end

arr = [148, 651, 124, 638, 567, 435, 185, 413, 841, 35]
print quickSort(arr)
