### 아스키 코드

- ##### 백준 ```11654``` 풀어보기 in 20210915 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 한 줄로 끝내자!
###### 1-1. 입력받은 문자열을 map을 통해 한 문자씩 요소로 담아 Int 배열을 만들어주자~ 그리고 다 더해버려!
```print(num2!.map{ Int(String($0))! }.reduce(0, +))```

### 내 전체 코드!
```swift
var num = readLine()
var num2 = readLine()

print(num2!.map{ Int(String($0))! }.reduce(0, +))
```


### END!
