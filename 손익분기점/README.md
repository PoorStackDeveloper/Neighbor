### 손익분기점

- ##### 백준 ```2941``` 풀어보기 in 211026 with YouJin 👩🏻‍💻

#### 다른 사람 코드 풀이 👩🏻‍💻

> ###### 숫자 세개를 입력받아서 반복받아서 답을 구했는데 반복문에서 시간초과가 났다. 반복문을 사용하지 않고 푸는 법을 고민해도 답이 나오지 않자 답을 찾아보았다!

##### 1. `eadLine()`을 통해 입력받고 `split`을 통해 공백을 기준으로 문자열을 나눠주고 `map`을 통해 Int로 형변환하여 3개의 숫자를 담은 배열을 반환한다.
`let n = readLine()!.split{$0==" "}.map{Int($0)!}`

##### 2. 그리고 배열의 숫자를 a,b,c에 각각 넣어준다.
`let (a,b,c) = (n[0],n[1],n[2])`

##### 3. 손익분기점을 구한다
###### 3-1. 그리고 b 즉, 가변비용이 c 판매가격보다 크다는 것은 손익분기점이 존재하지 않는 것을 뜻하므로 -1을 출력해준다.
###### 3-2. 이러한 문제를 풀때는 반복문 보다는 수학적으로 푸는 것이 더 좋다고 한다. 손익분기점은 고정비용 + 가변비용x = 판매가격x일때 x값을 구하면 x번 팔았을 때 같아진다는 말! a+bx = cx -> a/(c-b) = x 
```Swift
if b>=c {
  print(-1)
} else {
  print(a/(c-b)+1)
}
```

#### 반복문을 사용한 내 전체 코드!
```swift
var n = readLine()!.split(separator: " ")
var a = 0
var b = Int(n[0])!
var c = 0

if Int(n[2])! > Int(n[1])!{
    while a < b{
        a += Int(n[2])!
        b += Int(n[1])!
        c += 1
    }
    print(c+1)
}else{
    print("-1")
}
```

#### 좋은 코드!
```Swift
let n = readLine()!.split{$0==" "}.map{Int($0)!}
let (a,b,c) = (n[0],n[1],n[2])

if b>=c {
  print(-1)
} else {
  print(a/(c-b)+1)
}
```

<br>

##### 참고자료
- ###### https://velog.io/@torch-ray/baekjoon1712
