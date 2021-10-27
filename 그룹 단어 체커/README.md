### 그룹 단어 체커

- ##### 백준 ```1316``` 풀어보기 in 211027 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 입력받을 숫자의 개수를 입력받을 n, 입력받은 단어를 쪼개 저장할 nArray, 연속이 아닌 중복으로 나온 알파벳을 체크하기 위한 ShowedAlpha, 그룹 단어의 개수를 담을 count를 선언해줍니다!
```Swift
var n = Int(readLine()!)!
var nArray:[[String]] = []
var showedAlpha: [String] = []
var count = n
```

##### 2. n의 개수만큼 단어를 입력받아 map을 통해 문자 하나하나 쪼갠 배열을 nArray에 삽입한다.
```Swift
for i in 0...n-1{
    nArray.append(readLine()!.map{String($0)})
}
```

##### 3. 그룹 단어의 개수를 체크한다.
- ###### 3-1.  n개의 단어를 검사해야하므로 for-loop를 n번 돌려주자!
- ###### 3-2.  showedAlpha에는 각 단어에 있는 알파벳을 저장하므로 새로운 단어가 시작될때마다 초기화 해준다.
- ###### 3-3.  각 단어의 문자들을 검사해야하므로 각 단어의 문자들의 개수만큼 for-loop를 돌려준다.
- ###### 3-4.  만약 showedAplha에 현재 단어의 문자가 들어있고 showedAplha의 마지막 값이 현재 단어의 문자가 아니면 count(문자의 총 개수)에서 1을 빼준다.
> ###### showedAplha의 마지막을 검사하는 이유는 a가 나온 후 다른 문자가 나온 후에 a가 나오는 것만 잡아야하는데 aaa 이와같이 a가 계속해서 중복되는 문자도 잡아버리기때문이다!
- ###### 그리고 조건에 맞지 않으면 showedAlpha에 현재 단어의 문자를 넣어준다!
```swift
for i in 0...n-1{
    showedAlpha = []
    for j in 0...nArray[i].count-1{
        if (showedAlpha.contains("\(nArray[i][j])") == true) && (showedAlpha.last != "\(nArray[i][j])"){
            count -= 1
            break
        }else{
            showedAlpha.append("\(nArray[i][j])")
        }
    }
}
```

### 내 전체 코드!
```swift
var n = Int(readLine()!)!
var nArray:[[String]] = []
var showedAlpha: [String] = []
var count = n
 

for i in 0...n-1{
    nArray.append(readLine()!.map{String($0)})
}

for i in 0...n-1{
    showedAlpha = []
    for j in 0...nArray[i].count-1{

        if (showedAlpha.contains("\(nArray[i][j])") == true) && (showedAlpha.last != "\(nArray[i][j])"){
            count -= 1
            break
        }else{
            showedAlpha.append("\(nArray[i][j])")
        }
    }
}

print(count)
```
