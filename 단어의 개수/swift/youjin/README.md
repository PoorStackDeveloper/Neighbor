### 단어의 개수

- ##### 백준 ```1152``` 풀어보기 in 20210927 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 문자열을 입력받고 그 문자열을 공백을 기준으로 분리하여 배열로 저장한다.
- ###### 1-1. I am hungry = ["I", "am", "hungry"]
```var word = readLine()!.split(separator: " ")```

##### 2. 문자의 개수를 출력해야하므로 word배열의 개수를 출력한다!
```print(word.count)```

### 내 전체 코드!
```swift
var word = readLine()!.split(separator: " ")
print(word.count)
```

### END!
