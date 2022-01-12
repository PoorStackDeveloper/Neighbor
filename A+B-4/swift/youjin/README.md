### A+B-5

- ##### 백준 ```10951``` 풀어보기

##### 내 전체 코드!
```swift
var R = [Int]()

// Swift에서의 EOF 처리 방법은 아래와 같다.
// while의 조건부분에서 입력을 받을 시 입력이 있으면 while문을 실행하고 입력이 없으면 끝낸다.
while let N = readLine() {
    R.append(N.split{$0 == " "}.map{Int($0)!}.reduce(0, +))
}

R.map{print($0)}
```