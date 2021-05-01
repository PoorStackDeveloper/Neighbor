def solution(val):
    result = []
    for i in range(len(val)):
        if(val[i-1] != val[i]):
            result.append(val[i])
    
    print(result)

val = [1,2,2,2,3,4]
solution(val)