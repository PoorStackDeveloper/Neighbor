### 히샤드 수

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210824 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 모든 자릿수의 합을 구한다.
- ###### 1-1. map을 사용하기위해 x를 String으로 형변환한다.
```String(x)```
- ###### 1-2. map을 사용하여 s를 쪼개서 배열로 반환한다.
```String(x).map { String($0) } // ["1","2"]```
- ###### 1-3. reduce를 사용하기위해 x를 [Int]로 변환시킨다.
```String(x).map { String($0) }.map { Int($0)!}```
- ###### 1-4. reduce를 사용하여 Int 배열이 요소를 모두 더해준다.
```String(x).map { String($0) }.map { Int($0)!}.reduce(0, +)```

***

##### 2. x를 모든 자릿수의 합으로 나눈다.
```x % (String(x).map { String($0) }.map { Int($0)!}.reduce(0, +)) == 0```

***
### 내 전체 코드!
```swift
func solution(_ x:Int) -> Bool {
    return x % (String(x).map { String($0) }.map { Int($0)!}.reduce(0, +)) == 0
}
```

***

### 더 나은 코드!!
```swift
func solution(_ x:Int) -> Bool {
    return x % String(x).reduce(0, {$0+Int(String($1))!}) == 0
}
```

***
#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. 모든 자릿수의 합을 구한다.
- ###### 1-1. map을 사용하기위해 x를 String으로 형변환한다.
```String(x)```
- ###### 1-2. 그리고 모든 요소를 더해주는데 $1을 String, Int로 형변환하고 강제언래핑한 후 더해준다.
```String(x).reduce(0, {$0+Int(String($1))!})```
### END!
