### 콜라츠 추측

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210818 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. num을 담아줄 변수와 작업을 실행한 횟수를 담아줄 변수 선언
```swift
    var n = num
    var count = 0
```
***
##### 2. n이 1이 아니면 코드 실행 | n이 짝수이면 n을 2로 나눠라 n이 홀수이면 n에 3을 곱하고 1을 더해라 | 반복할때마다 Count 1씩 증가
```Swift
    while n != 1 {
        if n % 2 == 0{
            n /= 2
        }else{
            n *= 3
            n += 1
        }
        count += 1
    }
```
***
##### 3. count가 500보다 크거나 같다면 -1 반환 아니면 count 반환
```return count >= 500 ? -1 : count```

***

##### 내 전체 코드!
```swift
func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    
    while n != 1 {
        if n % 2 == 0{
            n /= 2
        }else{
            n *= 3
            n += 1
        }
        count += 1
    }

    return count >= 500 ? -1 : count
}
```
***
### END!
