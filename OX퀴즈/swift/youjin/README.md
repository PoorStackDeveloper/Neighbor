### OX퀴즈

- ##### 백준 ```8958``` 풀어보기

##### 내 전체 코드!
```swift
var N = Int(readLine()!)!
var R = Array(repeating: 0, count: N)

// N개의 퀴즈 결과를 입력받고 점수를 구하기위해 for문을 돌린다.
for i in 0...N-1{
    // 퀴즈 결과를 입력받고 입력받은 문자열을 map을 통해 순회한다.
    readLine().map {
        var c = 1
        // OXOXOX와 같은 문자열을 한번더 map을 통해 순회하여 "O", "X"와 같이 문자 한개씩 검사한다.
        $0.map{ a in
            // 문자가 O면 R[i]에 c를 누적시킨다.
            if a == "O"{
                R[i] += c
                c += 1
            }else{ // c는 X를 만날시 1로 초기화 된다.
                c = 1
            }
        }
    }
}

// 점수를 담은 R을 출력시킨다.
R.map{print($0)}
```

##### 좋은 코드
```Swift
let T = Int(readLine()!)!

for _ in 0..<T {
  let ox = readLine()!
  var count = 0
  var sum = 0
  ox.forEach { // forEach를 통해 ox문자열의 문자를 하나하나 순회한다.
    if $0 == "O" {
      count += 1
      sum += count
    } else {
      count = 0
    }
  }
  print(sum)
}
```