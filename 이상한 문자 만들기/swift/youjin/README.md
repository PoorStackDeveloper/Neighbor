### 이상한 문자 만들기

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210822 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 짝수 홀수를 검사하기 위한 j 선언, 이상한 문자를 담을 result 변수 선언
```Swift
    var j = 0
    var result = ""
```

##### 2. i가 공백이면 j = -1
- ###### AB C 이면 "A","B"," ","C" 공백을 만났을 때 j가 -1로 변하고 for문 마지막에 j += 1하면 J가 0인 상태로 C를 검사한다.
```Swift
    for i in s{
        if i == " " { j = -1 }
```

##### 3. j가 짝수이면 (result += i.uppercased()) 홀수이면 result += i.lowercased())
```j%2==0 ? (result += i.uppercased()) : (result += i.lowercased())```

### 내 전체 코드!
```swift
func solution(_ s:String) -> String {
    var j = 0
    var result = ""
    for i in s{
        if i == " " { j = -1 }
        j%2==0 ? (result += i.uppercased()) : (result += i.lowercased())
        j += 1
    }
    return result
}
```

### 더 나은 코드!
```swift
func solution(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}
```

#### 더 나은 코드 풀이 🙇🏻‍♀️


##### 1. components를 사용하여 공백을 기준으로 문자열을 나눠 [String] 타입으로 a에 저장

```let a = s.components(separatedBy: " ") // ["try", "hello", "world"]```

##### 2. map을 사용하여 튜플형식으로 index와 value를 저장
- ###### enumerated() ? array값에 enumerated()함수를 사용하면, (index, value) 튜플형식으로 구현된 리스트형이 리턴
```swift
    for (index, number) in a.enumerated() {
        print("\(index+1): \(number)")
    }

    // 1: EnumeratedSequence<String>(_base: "try")
    // 2: EnumeratedSequence<String>(_base: "hello")
    // 3: EnumeratedSequence<String>(_base: "world")
```
```.map { $0.enumerated()```

##### 3. 대소문자 변환
- ###### 3-1. enumerated한 상태에서 map을 사용해보면 다음과 같이 저장된다.
```swift
let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0 } }
print(a) // [[(offset: 0, element: "t"), (offset: 1, element: "r"), (offset: 2, element: "y")], [(offset: 0, element: "h"), (offset: 1, element: "e"), (offset: 2, element: "l"), (offset: 3, element: "l"), (offset: 4, element: "o")], [(offset: 0, element: "w"), (offset: 1, element: "o"), (offset: 2, element: "r"), (offset: 3, element: "l"), (offset: 4, element: "d")]]
```
- ###### 3-2. offset이 짝수이면 element를 대문자로 변환시키고 홀수이면 소문자로 변환시켜준다..
```.map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() }```

### END!
