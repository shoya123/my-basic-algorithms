# マージソート
def margeSort(arr)
    # 内部メソッドだが、スコープはトップレベル
    def m(arr, head, tail) 
        if head < tail
            mid = ((head + tail) / 2).floor
            m(arr, head, mid)
            m(arr, mid + 1, tail)
    
            l = arr.slice(Range.new(head, mid + 1, true))
            r = arr.slice(Range.new(mid + 1, tail + 1, true))
            i = head
            while l.size > 0 && r.size > 0 do
                if l[0] <= r[0]
                    arr[i] = l.shift
                else
                    arr[i] = r.shift
                end
                i += 1
            end
    
            while l.size > 0 do
                arr[i] = l.shift
                i += 1
            end
        end
        return arr
    end
    return m(arr, 0, arr.size-1)
end

arr = [148, 651, 124, 638, 567, 435, 185, 413, 841, 35]
print margeSort(arr)
