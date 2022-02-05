### 곱셈

- ##### 백준 ```2588``` 풀어보기 in 20220101

```Swift
// 첫번째 수를 저장한다.
let Un = Int(readLine()!)!

// 두번째 수를 저장한다.
let Dn = String(readLine()!)

// 결과를 담을 배열을 선언한다.
var R = [Int]()

for n in Dn{
    // 두번째 수의 요소를 하나하나 검사하면서 Un와 곱한값을 R에 삽입한다.
    R.append(Un*Int(String(n))!)
}

// R을 출력하고 두 수를 곱한 수도 출력한다.
print("\(R[2])\n\(R[1])\n\(R[0])\n\(Un*Int(String(Dn))!)")
```

##### 전체코드
```swift
let Un = Int(readLine()!)!
let Dn = String(readLine()!)
var R = [Int]()

for n in Dn{
    R.append(Un*Int(String(n))!)
}

print("\(R[2])\n\(R[1])\n\(R[0])\n\(Un*Int(String(Dn))!)")
```
