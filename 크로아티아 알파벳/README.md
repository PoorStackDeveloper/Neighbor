### 크로아티아 알파벳

- ##### 백준 ```2941``` 풀어보기 in 211026 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 문자를 입력받고 값이 있으므로 그냥 옵셔널을 벗겨버리자 (!)
`var n = readLine()!`

##### 2. 그리고 배열에 크로아티아 알파벳 변환값을 넣어준다.
`let m = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]`

##### 3. 그리고 m의 갯수만큼 for문을 돌리고 크로아티아 알파벳 변환값과 같은 값을 a로 대체한다. 그럼! 크로아티아 알파벳 변환값은 a로 변하고 기본 알파벳은 원래 count 1이기 때문에 이대로 n의 count를 세주면 끝!
```swift
for i in 0..<m.count {
    n = n.replacingOccurrences(of: m[i], with: "a")
}
```

### 내 전체 코드!
```swift
import Foundation
var n = readLine()!
let m = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
for i in 0..<m.count {
    n = n.replacingOccurrences(of: m[i], with: "a")
}
print(n.count)
```
