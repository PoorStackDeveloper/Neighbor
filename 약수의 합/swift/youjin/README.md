### 약수의 합

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210804 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 결과값을 담아줄 변수 선언!
```var result = 0```
***
##### 2. 음.. 0의 약수는 모든 정수라고 하는데 0을 리턴해야 맞는다 
```swift
    if n == 0{
        return 0
    }
```
***
##### 3. 1부터 n까지 반복하고 약수를 구해 result에 누적시켜 더한다.
```
    for i in 1...n{
        if n % i == 0{
            result += i
        }
    }
```


***
##### 내 전체 코드!
```swift
func solution(_ n:Int) -> Int {
    var result = 0
    if n == 0{
        return 0
    }
    for i in 1...n{
        if n % i == 0{
            result += i
        }
    }
    
    return result
}
```
***
##### 더 나은 코드!
```swift
func solution(_ n:Int) -> Int {
    return n != 0 ? (1...n).filter{n % $0 == 0}.reduce(0){$0 + $1} : 0
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. 삼항연산자를 사용하여 n이 0일 때는 0을 반환하고, 0이 아닐때는 약수의 합을 반환한다.
```n != 0 ? ~ : 0```
***


##### 2. filter를 사용하여 1부터 n까지의 숫자 중 약수만 뽑는다.
```(1...n).filter{n % $0 == 0}```
***


##### 3. reduce를 사용하여 약수를 모두 더해 반환한다.
```reduce(0){$0 + $1}```
***


### END!
