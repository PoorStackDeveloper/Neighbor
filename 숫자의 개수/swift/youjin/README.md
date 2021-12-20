## 숫자의 개수

- ##### 백준 ```2577``` 풀어보기 in 211206 with YouJin 👩🏻‍💻

<br>

> ##### 문제 설명
###### 3개의 숫자를 입력받고 그 3개의 숫자를 곱한 숫자에 어떤 숫자가 몇개 들어있는지 출력하라

<br>

##### 1. 3개의 숫자를 입력받고 3개의 숫자를 곱한 수를 구한다.
- ###### for문을 이용하여 3번 입력받고 입력받을 때마다 mulNum에 입력받은 숫자를 곱한 뒤 저장한다.
```Swift
for _ in 0...2{
    mulNum *= Int(readLine()!)!
}
```

##### 2. 3개의 숫자를 곱한 수에 어떤 숫자가 몇개 들어있는지 검사한다.
- ###### 2-1. 곱한 수의 자릿수만큼 for문을 돌리고, 그 안에서 10번 더 for문을 돌려 검사한다.
- ###### 2-2. 곱한수를 String으로 형변환하고 map을 사용하여 문자열에서 배열로 변환하고 서브스크립트를 활용하여 배열의 요소에 접근한다.
- ###### 2-3. 0에서 9의 문자열을 map을 이용하여 배열로 변환하고 서브스크립트를 활용하여 배열의 요소에 접근한다.
- ###### 2-4. 위와 같은 방법으로 두 배열의 요소에 접근하여 동일할 때 cnt[j]의 값을 증가시킨다.
```Swift
for i in 0...String(mulNum).count-1{
    for j in 0...9{
        if String(mulNum).map({$0})[i] == "0123456789".map({$0})[j]{
            cnt[j] += 1
        }
    }
}
```

##### 3. 출력한다.
- ###### 개수를 담은 배열을 출력한다.
```Swift
for i in 0...cnt.count-1{
    print(cnt[i])
}
```

<br>

#### 내 전체 코드!
```swift
var mulNum = 1
var cnt: [Int] = Array(repeating: 0, count: 10)

for _ in 0...2{
    mulNum *= Int(readLine()!)!
}

for i in 0...String(mulNum).count-1{
    for j in 0...9{
        if String(mulNum).map({$0})[i] == "0123456789".map({$0})[j]{
            cnt[j] += 1
        }
    }
}

for i in 0...cnt.count-1{
    print(cnt[i])
}
```

<br>

#### 좋은 코드 분석하기
- ###### 이렇게 간단하게 할 수 있구나.. 괜히 복잡하게 생각했다!
```Swift
let a = Int(readLine()!)! // 3번 입력받아 각 변수에 저장한다.
let b = Int(readLine()!)!
let c = Int(readLine()!)!
var n = a * b * c // 3개를 곱한 값을 n에 저장한다.
var characters = [Int](repeating: 0, count: 10) // 0이 10개가 담긴 Int 배열을 선언한다.

while n > 0 { // n즉 곱한 수가 0보다 크면 반복
    let x = n % 10 // n을 10으로 나눈 나머지를 x에 담는다. ex) 123이면 3을 담음
    characters[x] += 1 // x즉 3번째에 값을 1증가시킨다.
    n = n / 10 // 3은 검사했으니까 버리기위해 10으로 나눈다. ex) 123이면 12로
}

for x in characters {
    print(x) // 출력!
}

```