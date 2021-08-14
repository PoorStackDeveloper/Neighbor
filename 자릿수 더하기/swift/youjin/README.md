### 자릿수 더하기

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210810 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. n의 값을 넣어준 num 변수와 각 자리의 숫자를 넣어줄 arr 변수를 선언한다
```swift
    var num = n
    var arr = [Int]()
```
***
##### 2. num이 0보다 크면 반복하는 반복문 선언
```while num > 0{}```
***
##### 3. 배열에 num을 10으로 나눈 나머지를 넣어준다.
- ###### num이 123이면 3을 넣는다.
```arr.append(num%10)```

***
##### 4. 그리고 num에 num을 10으로 나눈 값을 넣어준다.
- ###### num이 123이면 12를 넣어준다.
``` num /= 10```

***
##### 3. 그리고 reduce 함수를 이용하여 arr 요소를 모두 다 더해 리턴한다.
```return arr.reduce(0) { $0 + $1 }```

***
##### 내 전체 코드!
```swift
func solution(_ n:Int) -> Int
{
    var num = n
    var arr = [Int]()
    while num > 0{
        arr.append(num%10)
        num /= 10
    }
    
    return arr.reduce(0) { $0 + $1 }
}
```
***
##### 더 나은 코드!
```swift
func solution(_ n:Int) -> Int
{
    return String(n).reduce(0, {$0+Int(String($1))!})
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. n을 String으로 변환한다 (reduce를 사용하기 위해)
```String(n)```
***


##### 2. reduce를 사용하여 모든 값을 더한다
```.reduce(0, {$0+Int(String($1))!})```
***

#### String에서도 reduce를 쓸 수 있구나

### END!
