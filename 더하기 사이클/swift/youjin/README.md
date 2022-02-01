### 더하기 사이클

- ##### 백준 ```1110``` 풀어보기 in 20220101

##### 내 코드 풀이
```Swift
var N = Int(readLine()!)!
var NN = 0
var C = 0

while NN != N{
    // 맨 처음엔 NN에 N을 넣어준다.
    if C == 0{ NN = N }
    
    // NN을 숫자마다 쪼개서 배열로 담는다.
    let SN = "\(NN)".map{Int(String($0))!}

    // NN을 쪼갠 것 중에 가장 오른쪽 수와 NN을 쪼갠 것들을 모두 더한 값 중에 가장 오른 쪽 수를 구해서 합친다.
    NN = Int("\(SN[SN.endIndex-1])\(String(SN.reduce(0,+)).map{$0}.reversed()[0])")!
    
    // 카운트 한다.
    C += 1
}

// 입력이 0일 때 출력이 1일 경우를 구별하기 위해 이렇게~
print(C == 0 ? 1 : C)
```
<br>
<br>

##### 다른 좋~~은 코드
```swift
let N = Int(readLine()!)!
var count = 0
var num = N

repeat{
    // 조건을 확인하기 전에 한번 미리 실행하고 조건을 테스트하고 참이면 repeat안의 코드를 실행한다.

    // 앞자리 뒷자리를 더하고 % 10을 통해 더한 값의 뒷자리만 구한다~
    let rhs = ((num / 10) + (num % 10)) % 10

    // num의 뒷자리만 구한다~
    let lhs = num % 10

    // 구한 뒷자리들을 더한다~
    num = lhs * 10 + rhs

    // 카운트한다!
    count += 1
}while(N != num)

// 카운트 출력하기!
print(count)
```
