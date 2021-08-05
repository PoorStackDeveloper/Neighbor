### 수박수박수박수박수박수?

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210805 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 결과값을 담아줄 변수 선언!
```var result = ""```
***
##### 2. n이 0이면 0부터 0까지, n이 0이 아니면 0부터 n-1까지 반복문을 돌려주자~
```for i in 0...(n == 0 ? 0 : n-1){}```
***
##### 3. i가 짝수이면 result에 수를 누적시키고 홀수면 result에 박을 누적시킨다!
```i % 2 == 0 ? (result += "수") : (result += "박")```
***

##### 3. result를 리턴해주자!
```return result```
***
##### 내 전체 코드!
```swift
func solution(_ n:Int) -> String {
    var result = ""
    
    for i in 0...(n == 0 ? 0 : n-1){
        i % 2 == 0 ? (result += "수") : (result += "박")
    }
    
    return result
}
```
***
##### 더 나은 코드!
```swift
func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. 수박을 n/2번 반복한 String을 만들어주고 n이 짝수면 아무것도 안하고 n이 홀수면 수를 뒤에 넣어준다...! 대박
```"\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"```
***



### END!
