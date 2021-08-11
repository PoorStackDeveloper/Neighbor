### 문자열을 정수로 바꾸기

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210811 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. String 형식의 s를 Int로 형변환하고 강제 언래핑해준다.
```Int(s)!```

##### 내 전체 코드!
```swift
func solution(_ s:String) -> Int {
    return Int(s)!
}
```
***
##### 더 나은 코드!
```swift
func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}
```

### END!
