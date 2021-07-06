def solution(arr):
    if len(arr) > 1:
        arr.pop(arr.index(min(arr)))
        return arr
    else:
        arr.append(-1)
        return [min(arr)]

arr = [1,2,3,4,5]
solution(arr)