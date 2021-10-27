### 단어 공부

- ##### 백준 ```1157``` 풀어보기 in 20210928 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 단어를 입력받는다.
- ###### 1-1. readLine을 통해 문자열을 입력받는다.
- ###### 1-2. uppercased()를 통해 문자열을 모두 대문자로 변경한다.
- ###### 1-3. .map을 통해 한 문자 한 문자씩 나눠서 배열로 word에 저장한다.
```var word = readLine()!.uppercased().map { $0 }```

##### 2. 단어에 알파벳이 각각 몇개씩 있는지 검사한다.
- ###### 1-1. word[i] 즉 단어 한자씩 알파벳과 비교해서 같으면 count를 증가시킨다.
```swift
for i in 0...word.count-1{
    for j in 0...alpha.count-1{
        if String(word[i]) == String(alpha[j]){
            count[j] += 1
        }
    }
}
```

##### 3. 가장 많은 count의 index를 구해서 maxIndex에 저장한다.
```swift
for i in 0...count.count-1{
    if count[i] == count.max(){
        maxIndex.append(i)
    }
}
```

##### 4. maxIndex가 두개 이상이면 ?를 출력하고 1개면 alpha[maxIndex[0]]을 출력한다.
```maxIndex.count == 1 ? print(alpha[maxIndex[0]]) : print("?")```

### 내 전체 코드!
```swift
var word = readLine()!.uppercased().map { $0 }
var alpha = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
var count = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var max = 0
var maxIndex = [Int]()

for i in 0...word.count-1{
    for j in 0...alpha.count-1{
        if String(word[i]) == String(alpha[j]){
            count[j] += 1
        }
    }
}

for i in 0...count.count-1{
    if count[i] == count.max(){
        maxIndex.append(i)
    }
}

maxIndex.count == 1 ? print(alpha[maxIndex[0]]) : print("?")
```

### END!
