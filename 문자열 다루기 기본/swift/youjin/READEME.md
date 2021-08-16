### 문자열 다루기 기본

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210816 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 기준에 맞지 않다면 증가시켜줄 변수 선언
```swift
    var no = 0
```
***
##### 2. 문자열의 요소가 1,2,3,4,5,6,7,8,9,0 이 아니면 no에 1을 대입
```Swift
    for i in s{
        if i == "1" || i == "2" || i == "3" || i == "4" || i == "5" || i == "6" || i == "7" || i == "8" || i == "9" || i == "0"{}else{
            no = 1
        }
    }
```
***
##### 3. S의 count가 4또는 6이 아니라면 no에 대입
```swift
    if s.count == 4 || s.count == 6{}else{
        no = 1
    }
```

***
##### 4. no가 0이면 true 아니면 false
```return no == 0 ? true : false```

***
##### 내 전체 코드!
```swift
func solution(_ s:String) -> Bool {
    var no = 0

    for i in s{
        if i == "1" || i == "2" || i == "3" || i == "4" || i == "5" || i == "6" || i == "7" || i == "8" || i == "9" || i == "0"{}else{
            no = 1
        }
    }

    if s.count == 4 || s.count == 6{}else{
        no = 1
    }

    return no == 0 ? true : false
}
```
***
##### 첫번째 더 나은 코드!
```swift
func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. s를 Int로 형변환 했을 때 nil이 아니고 s.count가 4또는 6이면 true 아니면 false
```return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false```
***

### END!
