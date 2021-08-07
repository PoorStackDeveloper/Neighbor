### 제일 작은 수 제거하기

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210807 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. array 변수에 매개변수 arr를 내림차순한 것을 넣어준다. [1, 2, 3]
- ###### 그리고 0번째 인덱스 값(가장 작은 값)을 minNum에 넣어준다.
```swift
    var array = arr.sorted(by: <)
    var minNum: Int = array[0]
```
***
##### 2. arr의 값(정렬되지 않은 초기 배열)을 array에 넣어준다.
```array = arr```
***
##### 3. 가장 작은 수를 지워준다.
- ###### firstIndex에 가장작은 수의 인덱스를 저장하고 array에서 그 인덱스의 값을 지워준다.
```swift
    if let firstIndex = array.firstIndex(of: minNum) {
        array.remove(at: firstIndex)
    }
```
***

##### 4. 리턴한다.
- ###### 기존 배열의 개수가 1과 같으면 [-1]을 리턴하고 아니면 array를 리턴한다.
```return arr.count == 1 ? [-1] : array```

##### 내 전체 코드!
```swift
func solution(_ arr:[Int]) -> [Int] {
    var array = arr.sorted(by: <)
    var minNum: Int = array[0]
    
    array = arr
    
    if let firstIndex = array.firstIndex(of: minNum) {
        array.remove(at: firstIndex)
    }
    
    return arr.count == 1 ? [-1] : array
}
```

##### 더 나은 코드!
```swift
func solution(_ arr:[Int]) -> [Int] {
    let min = arr.sorted(by: <)[0]
     return arr.count == 1 ? [-1] : arr.compactMap({ return $0 != min ? $0 : nil })
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. 변수 min에 arr의 가장 작은 값을 넣어준다.
```let min = arr.sorted(by: <)[0]```
- ###### 나는 이 과정을 두줄에 걸쳐 진행했는데 sorted뒤에 인덱스를 써서 값에 접근하는 방법도 있구나
```swift
    var array = arr.sorted(by: <)
    var minNum: Int = array[0]
```

##### 2. arr개수가 1이면 [-1]을 리턴하고 아니면 ```compactMap```을 사용하여 배열의 요소를 검사한다
- ###### 배열의 요소가 [4, 3, 2, 1]이라면 4 != min(1), 3 != min(1), 2 != min(1), 1 != min(1) 순서로 검사하여 1은 min과 같으므로 nil을 반환하여 결과적으로 [4, 3, 2]를 반환한다!
```swift
return arr.count == 1 ? [-1] : arr.compactMap({ return $0 != min ? $0 : nil })
```

### END!
