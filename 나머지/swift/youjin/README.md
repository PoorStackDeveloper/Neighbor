### 나머지

- ##### 백준 `3052` 풀어보기 in 20211223 with YouJin 👩🏻‍💻

##### 1. 숫자를 10개 입력받고 입력받은 문자열을 Int로 형변환해서 n 배열에 삽입한다.
```Swift
for _ in 0...9{
    n.append( readLine().map{ Int($0)!}! % 42 )
}
```

<br>

##### 2. 10번 반복하는 2중 for문을 돌린다.
- ###### 2-1. i번째 값과 나머지 값들을 비교하여 같은지 확인한다.
- ###### 2-2. 자신과 비교할 수 없도록 i != j 조건을 추가했다!
- ###### 2-3. 같은 값을 발견하면 i번째 값을 -1로 변경한다.
- ###### 2-4. 그리고 중복되는 수의 개수를 담는 변수 r을 1증가시킨다.
```Swift
for i in 0...n.count-1{
    for j in 0...n.count-1{
        if n[i] == n[j] && i != j{
            n[i] = -1
            r += 1
        }
    }
}
```

### 내 전체 코드!
```swift
var n = [Int]()
var r = 0

for _ in 0...9{
    n.append( readLine().map{ Int($0)!}! % 42 )
}

for i in 0...n.count-1{
    for j in 0...n.count-1{
        if n[i] == n[j] && i != j{
            n[i] = -1
            r += 1
        }
    }
}

print(10-r)
```

