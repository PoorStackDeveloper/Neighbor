### 평균

- ##### 백준 ```1546``` 풀어보기

##### 내 전체 코드!
```swift
var N = Double(readLine()!)!

// N개의 점수를 입력받고 split으로 입력받은 값을 공백을 기준으로 분리한다. map으로 배열의 요소를 Double로 형변환 하여 반환한다.
var A = readLine()!.split{$0 == " "}.map{Double($0)!}

// A의 최댓값을 M에 저장한다.
var M = A.max()!

// A의 요소들을 M으로 나누고 100을 곱해 다시 넣는다. 
// A의 요소들을 모두 더하고 N즉 배열의 개수로 나눠 평균을 출력한다.
print(A.map{ $0/M*100 }.reduce(0){$0 + $1}/N)
```

##### 좋은 코드
```Swift
// a에는 입력받을 점수의 개수를 입력받고
// b에는 점수들을 입력받아서 split으로 공백을 기준으로 분리하여 배열로 반환한 후 배열의 요소를 Float 형식으로 형변환하여 다시 반환한다.
var a=Float(readLine()!)!, b=readLine()!.split{$0==" "}.map{Float($0)!}

// b의 요소를 reduce를 사용하여 모두 더하고 a로 나눠서 평균을 구한다.

// 다 더하고.. b의 최대값에 100을 곱한 걸로 나눈다.

// reduce(0){$0 + $1} -> reduce(0,+) 변경!
print(b.reduce(0,+)/a/b.max()!*100)
```