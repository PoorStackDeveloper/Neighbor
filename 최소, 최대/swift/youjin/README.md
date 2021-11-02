### 최소, 최대

- ##### 백준 ```10818``` 풀어보기 in 211101 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 문자를 입력받을 수를 입력받는다
`var n = readLine()!`

##### 2. 문자를 입력받고 split을 통해 공백을 기준으로 문자열을 나누고 map을 통해 Int로 형변환한 후 nArr에 저장한다.
`nArr = (readLine()?.split(separator: " ").map{ Int(String($0))! })!`

##### 3. nArr에서 max값과 min값을 출력한다
`print("\(nArr.min()!) \(nArr.max()!)")`

### 내 전체 코드!
```swift
let n = readLine()
var nArr:[Int] = []
nArr = (readLine()?.split(separator: " ").map{ Int(String($0))! })!
print("\(nArr.min()!) \(nArr.max()!)")
```
