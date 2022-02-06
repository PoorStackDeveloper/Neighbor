### A+B-3

- ##### 백준 ```10950``` 풀어보기

##### 내 전체 코드
```swift
let T = Int(readLine()!)!
var R = [Int]()

// 1부터 T까지의 배열을 만들고 forEach 돌려 배열의 요소 개수만큼 반복한다.
Array(1...T).forEach { i in
    // 숫자 두개를 입력받고 두개를 공백으로 구분하여 배열로 반환한다.
    // 반환된 배열을 map을 통해 Int로 형변환하고 reduce를 통해 두 값을 더한다.
    R.append((readLine()?.split(separator: " ").map{Int($0)!}.reduce(0,+))!)
}

// 값을 출력한다.
R.map{print($0)}

```