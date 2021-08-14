### 문자열 내 p와 y의 개수

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210814 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. p의 개수와 y의 개수를 담아줄 변수 선언~
```swift
    var pCount = 0
    var yCount = 0
```
***
##### 2. S가 끝날때까지 i에 글자 한 자씩 넣는다.
```for i in s {}```
***
##### 3. i가 p또는 P라면 pCount += 1 y도 똑같이
```swift
        if i == "p" || i == "P"{
            pCount += 1
        }else if i == "y" || i == "Y"{
            yCount += 1
        }
```

***
##### 4. p의 개수와 y의 개수가 같다면 True, 아니면 False 반환
```return pCount == yCount ? true : false```

***
##### 내 전체 코드!
```swift
func solution(_ s:String) -> Bool
{
    var pCount = 0
    var yCount = 0
    
    for i in s {
        if i == "p" || i == "P"{
            pCount += 1
        }else if i == "y" || i == "Y"{
            yCount += 1
        }
    }
    return pCount == yCount ? true : false
}
```
***
##### 첫번째 더 나은 코드!
```swift
func solution(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. s를 모두 소문자로 변경하고 string에 넣어준다.
```let string = s.lowercased()```
***


##### 2. String의 P 개수와 String의 y 개수를 비교하여 같으면 true 다르면 false
```string.components(separatedBy: "p").count == string.components(separatedBy: "y").count```
***

##### 두번째 더 나은 코드!
```swift
func solution(_ s:String) -> Bool
{
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}
```

***

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. s를 소문자로바꾸고 filter를 사용하여 p, y의 개수를 구하고 비교한다.
```s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count```
***

## 위의 풀이와 방법은 같지만 사용한 도구가 다른 케이스


### END!
