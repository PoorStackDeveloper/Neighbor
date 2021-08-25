### 나누어 떨어지는 숫자 배열

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210825 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. result 변수에 arr의 요소 중에서 divisor와 나누어 떨어지는 요소만 뽑아 저장한다.
- ###### 1-1. 배열에서 조건에 맞는 요소만 뽑고 싶을 땐 filter를 사용하자.
```let result = arr.filter { Int(String($0))! % divisor == 0 }```
- ###### 1-2. result의 요소 중에서 나누어 떨어지는 요소가 아무것도 없을 때에는 [-1]을 반환하고 있을 때에는 result를 오름차순 정렬한 것을 반환한다.
```return result.count == 0 ? [-1] : result.sorted(by: <)```

***
### 내 전체 코드!
```swift
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { Int(String($0))! % divisor == 0 }
    return result.count == 0 ? [-1] : result.sorted(by: <)
}
```

***

### END!
