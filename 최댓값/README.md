### 최댓값

- ##### 백준 ```2562``` 풀어보기 in 211101 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 숫자를 9번 입력받고 숫자를 입력받을 때 마다 max보다 큰지 검사하여 크면 max에 넣고 그때의 index를 maxIndex에 저장해준다.
```Swift
for i in 0...8{
    nArr.append(readLine()!)
    if max < Int(nArr[i])!{
        max = Int(nArr[i])!
        maxIndex = i
    }
}
```

##### 2. max값을 출력해주고 maxIndex는 0부터 8까지이므로 1을 더해준다~
```Swift
print(max)
print(maxIndex+1)
```



### 내 전체 코드!
```swift
var nArr: [String] = []
var max = 0
var maxIndex = 0
for i in 0...8{
    nArr.append(readLine()!)
    if max < Int(nArr[i])!{
        max = Int(nArr[i])!
        maxIndex = i
    }
}

print(max)
print(maxIndex+1)
```
