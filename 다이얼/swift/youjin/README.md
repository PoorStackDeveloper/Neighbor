### 다이얼

- ##### 백준 ```5622``` 풀어보기 in 20210928 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 문자열을 입력받는다.
- ###### 1-1. readLine을 통해 문자열을 입력받는다.
- ###### 1-2. .map을 통해 한 문자 한 문자씩 나눠서 배열로 num에 저장한다.
- ###### 1-3. .map을 사용하여 문자를 담을 때 String으로 형변환 하여 저장한다.
```var num: [String] = (readLine()?.map{ String($0) })!```

##### 2. 문자당 걸리는 시간을 담을 변수를 선언해준다.
`var number = [Int]()`

##### 3. 한 문자당 걸리는 시간을 구한다.
```swift
for i in 0...num.count-1{
    switch num[i]{
    case "A","B","C":
        number.append(3)
    case "D","E","F":
        number.append(4)
    case "G","H","I":
        number.append(5)
    case "J","K","L":
        number.append(6)
    case "M","N","O":
        number.append(7)
    case "P","Q","R","S":
        number.append(8)
    case "T","U","V":
        number.append(9)
    case "W","X","Y","Z":
        number.append(10)
    default:
        number.append(11)
    }
}
```

##### 4. 각 문자당 걸리는 시간을 담을 배열에 담긴 시간들을 reduce를 사용하여 모두 더해준다~ 그럼 끝!
`print(number.reduce( 0, + ))`

<br>

#### 내 전체 코드!
```swift
var num: [String] = (readLine()?.map{ String($0) })!
var number = [Int]()

for i in 0...num.count-1{
    switch num[i]{
    case "A","B","C":
        number.append(3)
    case "D","E","F":
        number.append(4)
    case "G","H","I":
        number.append(5)
    case "J","K","L":
        number.append(6)
    case "M","N","O":
        number.append(7)
    case "P","Q","R","S":
        number.append(8)
    case "T","U","V":
        number.append(9)
    case "W","X","Y","Z":
        number.append(10)
    default:
        number.append(11)
    }
}

print(number.reduce( 0, + ))
```
