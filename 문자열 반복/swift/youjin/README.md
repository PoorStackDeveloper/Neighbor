### 문자열 반복

- ##### 백준 `2675` 풀어보기 in 20211222 with YouJin 👩🏻‍💻

##### 1. components를 사용하기위해 Founcdation을 import해준다.
- ###### components와 유사한 split는 Swift Standard Library에 포함되어있어 별도의 import없이 바로 사용하능하지만 components는 SSL에 포함되어있지 않고 Foundation에 포함되어있어 Foundation을 import해줘야 사용할 수 있다.
`import Foundation`

<br>

##### 2. 테스트 케이스의 개수를 담을 S와, 테스트 케이스를 담을 N을 선언한다.
```Swift
let S = readLine()
var N = [String]()
```

<br>

##### 3. S번 반복하고 N에 입력받은 값을 공백을 기준으로 쪼개 담는다.
```Swift
for _ in 0...Int(S!)!-1{
    N.append(contentsOf: readLine()!.components(separatedBy: " "))
}
```

<br>

##### 4. 문자열을 반복하여 출력한다.
- ###### 4-1. stride를 이용하여 2씩 증가하는 반복문을 만는다. //i = 1, i = 3
- ###### 4-2. N[i] 즉 문자열에만 접근한다. ex) ["1","ABC","2","AAB"] // 2씩증가하는 i를 통해 "ABC", "AAB"에만 접근한다.
- ###### 4-3. 접근한 문자열을 map을 통해 문자열의 각 요소에 접근하여 N[i-1] 즉, 입력받은 숫자만큼 반복한다.
- ###### 출력은 terminatior를 사용하여 NewLine없이 진행했다.

```Swift
for i in stride(from: 1, to: N.count, by: 2){
    N[i].map{ for _ in 0...Int(N[i-1])!-1{ print($0, terminator: "") }}
    print("")
}
```

<br>

##### 내 전체 코드!
```swift
import Foundation

let S = readLine()
var N = [String]()

for _ in 0...Int(S!)!-1{
    N.append(contentsOf: readLine()!.components(separatedBy: " "))
}

for i in stride(from: 1, to: N.count, by: 2){
    N[i].map{ for _ in 0...Int(N[i-1])!-1{ print($0, terminator: "") }}
    print("")
}
```

<br>


#### 더 나은 코드
```swift
let n = Int(readLine()!)! // 입력받고 Int로 형변환한다.

for _ in 0..<n { // n만큼 반복한다.
    let input = readLine()!.split(separator: " ").map { String($0) } // 입력받고 split을 이용하여 공백으로 쪼개고 map으로 형변환한다.
    let num = Int(input[0])! // input의 숫자부분을 Int로 형변한한다.
    let string = input[1] // string에는 문자부분을 넣는다.
    for chr in string { // 문자의 길이만큼 반복하고
        for _ in 0..<num { // 숫자만큼 문자 한 글자 한글자를 반복하여 출력한다.
            print(chr,terminator: "")
        }
    }
    print() // 줄바꿈!
}
```
