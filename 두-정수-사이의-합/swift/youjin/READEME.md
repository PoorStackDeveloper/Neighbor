### 두 정수 사이의 합

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210802 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. a가 크면 a부터 b까지의 요소를 담은 배열을 생성하고, b가 크면 b부터 a까지의 요소를 담은 배열을 생성한다.
```let arr = Array(a > b ? b ... a: a ... b)```
***
##### 2. arr 요소의 개수가 짝수이면 (a + b) * (arr.count / 2) 연산을 하여 결과 값에 넣어준다.
```swift
if arr.count % 2 == 0{
        result = (a + b) * (arr.count / 2)
    }
```
***
##### 3. arr 요소의 개수가 약수이면 (a + b) * (arr.count / 2)한것에 남은 가운데 숫자 한개를 더해준다.
```swift
else{
        let midIndex = arr.index(arr.startIndex, offsetBy: arr.count / 2)
        result = (a + b) * (arr.count / 2) + arr[midIndex]
    }
```
***
##### 내 전체 코드!
```swift
func solution(_ a:Int, _ b:Int) -> Int64 {
    let arr = Array(a > b ? b ... a: a ... b)
    var result = 0
    if arr.count % 2 == 0{
        result = (a + b) * (arr.count / 2)
    }else{
        let midIndex = arr.index(arr.startIndex, offsetBy: arr.count / 2)
        result = (a + b) * (arr.count / 2) + arr[midIndex]
    }
    
    return Int64(result)
}
```

##### 실패했던 내 코드!
- ###### 잘 짰다고 생각하고 돌렸는데 4번이 자꾸 시간 초과가 나서 포기한 코드이다.
```swift
func solution(_ a:Int, _ b:Int) -> Int64 {

    return Int64(Array(a > b ? b ... a: a ... b).reduce(0) {$0 + $1})
}
```

##### 실패했던 내 코드 풀이👩🏻‍💻!

##### 1. a가 크면 a부터 b까지의 요소를 담은 배열을 생성하고, b가 크면 b부터 a까지의 요소를 담은 배열을 생성한다.
```(Array(a > b ? b ... a: a ... b)```

##### 2. reduce 함수를 통해 배열의 모든 요소를 더해준다.
```.reduce(0) {$0 + $1}```

##### 3. 함수의 반환타입에 맞게 Int64로 형변환 해준다.
```Int64(~)```

### END!
