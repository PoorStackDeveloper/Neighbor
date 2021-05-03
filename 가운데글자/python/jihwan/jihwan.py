def solution(arr):
    value = list(arr)
    if(len(value)%2 == 0):
        return value[(int)((len(value)-1)/2)] + value[int(len(value)/2)]
    
    else:
        return value[int((len(value)-1)/2)]


arr = "abcde"
solution(arr)