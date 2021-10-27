### 상수

- ##### 백준 ```2908``` 풀어보기 in 20211008 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 문자열을 입력받고 split을 통해 공백을 기준으로 나눈 문자열들을 배열로 반환한다.
###### 1-1. split 대신 component를 사용할 시에는 Foundation을 import 해야한다.
`var num = readLine()?.split(separator: " ") // ["123", "234"]`

##### 2. num에 저장된 두 단어(String)를 다시 배열로 쪼개고 (["1","2","3"]) reversed()를 통해 뒤집는다.(["3","2","1"]) 그리고 String으로 형변환한다.("321")
```swift
var a = String(num![0].map{ $0 }.reversed())
var b =  String(num![1].map{ $0 }.reversed())
```

##### 3. a가 크면 a를 b가 크면 b를 출력한다.
`print(a > b ? a : b)`

### 내 전체 코드!
```swift
var num = readLine()?.split(separator: " ")
var a = String(num![0].map{ $0 }.reversed())
var b =  String(num![1].map{ $0 }.reversed())

print(a > b ? a : b)
```
