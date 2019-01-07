# 線形探索
def linearSearch(arr, target):
    for (i, j) in enumerate(arr):
        if j == target:
            return i
    return False

print(linearSearch([104, 865, 413, 541, 304, 354, 165, 150], 304))
