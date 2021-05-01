def solution(val):
    result = []
    for i in range(len(val)):
        if i == 0 :
            result.append(val[i])

        elif(val[i] != val[i-1]):
            result.append(val[i])
    
    print(result)

val = [1,2,2,2,3,4]
solution(val)