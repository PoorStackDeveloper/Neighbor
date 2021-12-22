### 알파벳 찾기

- ##### 백준 ```10809``` 풀어보기 in 20211221 with YouJin 👩🏻‍💻

> ###### 3달전에 도전했다가 실패했던 문제 다시 도전하기!
##### 1. readLine으로 문자를 입력받고 !로 강제 언래핑하여 입력받은 값을 가져와서 map을 이용해서 문자열을 배열로 변환한다.
`let word = readLine()!.map{$0}`
##### 2. 알파벳을 담은 배열을 만들어야하는데 ["A"..."Z"]이렇게 쓰면 너무 길어져서 다른 방법을 생각해봤다.
- ###### 2-1. 일단 1부터 26까지 담은 배열을 만들고 map을 이용하여 배열의 요소에 96을 더해준다.
- ###### 2-2. 다시 한번 map을 통해 Int를 유니코드로 변환시킨다. 그럼 알파벳 배열 완성!
`let alpha = Array(1...26).map{$0 + 96}.map{ String(UnicodeScalar($0)!) }`
##### 3. -1의 요소를 26개 담은 배열을 선언해준다. 결과값을 담아줘야함!
`var result = Array(repeating: -1, count: 26)`

##### 4. 알파벳이 처음 등장하는 위치를 구한다.
```Swift
for i in 0...word.count-1{ // 입력받은 문자열의 글자 개수만큼 반복
    for j in 0...alpha.count-1{ // 알파벳 개수만큼 반복
        if String(word[i]) == alpha[j] && result[j] == -1{ // 중복을 걸러내기 위해 -1이면 들어가게 했다! -1이 아니면 이미 처음 등장하는 위치를 구한 알파벳이니까
            result[j] = i
        }
    }
}
```

##### 5. 결과값을 출력한다.
```Swift
// Int Array를 String으로 변환하고 joined함수를 통해 배열을 문자열로 묶는다. 근데 묶을 때 공백을 넣어서 묶음
// ex ) ["1","2","3"] -> 1(공백)2(공백)3
print(result.map{ String($0) }.joined(separator: " "))
```

### 내 전체 코드!
```swift
let word = readLine()!.map{$0}
let alpha = Array(1...26).map{$0 + 96}.map{ String(UnicodeScalar($0)!) }
var result = Array(repeating: -1, count: 26)

for i in 0...word.count-1{
    for j in 0...alpha.count-1{
        if String(word[i]) == alpha[j] && result[j] == -1{
            result[j] = i
        }
    }
}

print(result.map{ String($0) }.joined(separator: " "))
```

### 더 좋은 코드!
```Swift
let S = readLine()! // S를 입력받는다!
var R: [String] = [] // 결과값을 담을 배열 선언
for i in 97...122 { // 알파벳 개수만큼 반복
    R.append(String(Array(S).firstIndex(of: Character(UnicodeScalar(i)!)) ?? -1)) // 입력받은 문자열에서 각 알파벳의 firstIndex를 찾는다. 각 알파벳은 i를 유니코드로 바꿔 얻었다..!
}
print(R.joined(separator: " ")) // 얻은 결과값을 joined를 통해 문자열로 치환한다. 똑똑하다..!
```

