# 線形探索
def linearSearch(arr, target)
    for i,j in arr
        if j == target
            return j
        end
    end
    return false
end

print linearSearch([104, 865, 413, 541, 304, 354, 165, 150], 304)
