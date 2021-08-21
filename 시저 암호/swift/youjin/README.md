### 시저 암호

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210821 with YouJin 👩🏻‍💻
<!-- 
#### 풀이 방법
- ##### 1. 문자 하나하나를 배열에 넣음
- ##### 1. 문자의 대소문자를 검사하여 대문자인지 소문자인지 배열에 저장함
- ##### 1. 문자와 알파벳 배열과 같은지 검사하여 같으면 그때의 인덱스를 저장함
- ##### 1. 문자가 Z이면 알파벳 배열의 0 Index 에 N을 더한 index의 위치의 값을 결과 배열에 넣어줌 -->

#### 내 코드 풀이 👩🏻‍💻

##### 1. 배열 선언
- ###### 1-1. ***alphaArr*** : 문자와 비교할 알파벳 배열 선언
- ###### 1-2. ***sArr*** : 문자열을 쪼개 한 문자씩 저장할 배열 선언
- ###### 1-3. ***sizeArr*** : 대문자이면 1, 소문자이면 2를 저장할 배열 선언
- ###### 1-4. ***resultArr*** : 결과를 담을 배열 선언
- ###### 1-5. ***indexArr*** : 각 문자와 alphaArr와 비교하여 같을 때의 index를 담을 배열 선언

```swift
    let alphaArr = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var sArr = [String]()
    var sizeArr = [Int]() // 1이 대문자, 2가 소문자
    var resultArr = [String]()
    var indexArr = [Int]()
```
***
##### 2. 문자열을 쪼개 문자 하나하나 배열에 저장하기, 대소문자 검사하여 배열에 저장하기
- ###### 2-1. s가 ABC라면 i = A, i = B, i = C 즉 sArr = ["A","B","C"]
- ###### 2-2. i가 i를 대문자로 변환한 것과 같다면 sizeArr에 1 삽입 아니면(소문자면) 2 삽입
```Swift
    for i in s{
        sArr.append(String(i))
        if String(i) == i.uppercased(){
            sizeArr.append(1)
        }else{
            sizeArr.append(2)
        }
    }
```
***
##### 3. sArr의 요소와 alphaArr의 요소를 비교하여 index 저장하기
###### 3-1. sArr의 요소가 공백이라면 예외 처리 수 99를 넣어주고 다음 sArr의 요소로 빠져나간다.
###### 3-1. sArr의 요소가 공백이 아니라면 요소를 대문자로 변환한 것이 알파벳 배열의 요소와 같다면 그 때의 알파벳 index를 index 배열에 넣어준다.
```swift
    for i in 0...sArr.count-1{
        for j in 0...alphaArr.count-1{
            if sArr[i] == " "{
                indexArr.append(99)
                break
            }else if sArr[i].uppercased() == alphaArr[j]{
                indexArr.append(j)
            }
        }
    }
```

***
##### 4. sArr의 요소보다 n번 앞에 있는 값을 구해 resultArr에 저장하기
- ###### 4-1. sArr의 요소가 공백이면 결과 배열에 공백을 삽입한다.
- ###### 4-1. sArr의 요소가 공백이 아니면(알파벳이면) sArr의 요소를 대문자로 변환한 것이 "Z"라면 resultArr에 alphaArr[0+n-1]의 값을 넣어준다. (Z에서 3을 밀면 C 이므로 alphaArr[0+3-1] == C)
- ###### 4-1. sArr의 요소가 공백이 아니면(알파벳이면) sArr의 요소를 대문자로 변환한 것이 "Z"가 아니라면 indexArr[i]+n가 25보다 크다면 indexArr[i]에서 26을 빼준 뒤 결과 값에 alphaArr[indexArr[i]+n]의 값을 삽입한다.
```swift
    for i in 0...sArr.count-1{
        if sArr[i] != " "{
            if sArr[i].uppercased() == "Z"{
                resultArr.append(alphaArr[0+n-1])
            }else{
                if indexArr[i]+n > 25{
                    indexArr[i] = indexArr[i] - 26
                    resultArr.append(alphaArr[indexArr[i]+n])
                    print(resultArr)
                }else{
                    resultArr.append(alphaArr[indexArr[i]+n])
                }
            }
        }else{
            resultArr.append(" ")
        }
    }
```
***
##### 5. 모든 문자 대문자로 변환했던 거 원래대로 변경해주기
- ###### 5-1. sArr[i]가 공백이 아니라면 sizeArr[i]가 2라면(소문자라면) 결과 값의 요소를 소문자로 변환시켜 넣어준다.
```swift
    for i in 0...sizeArr.count-1{
        if sArr[i] != " "{
            if sizeArr[i] == 2{
                resultArr[i] = resultArr[i].lowercased()
            }
        }
    }
```
***
### 내 전체 코드!
```swift
func solution(_ s:String, _ n:Int) -> String {
    let alphaArr = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var sArr = [String]()
    var sizeArr = [Int]() // 1이 대문자, 2가 소문자
    var resultArr = [String]()
    var indexArr = [Int]()
    
    for i in s{
        sArr.append(String(i))
        if String(i) == i.uppercased(){
            sizeArr.append(1)
        }else{
            sizeArr.append(2)
        }
    }

    for i in 0...sArr.count-1{
        for j in 0...alphaArr.count-1{
            if sArr[i] == " "{
                indexArr.append(99)
                break
            }else if sArr[i].uppercased() == alphaArr[j]{
                indexArr.append(j)
            }
        }
    }
    
    for i in 0...sArr.count-1{
        if sArr[i] != " "{
            if sArr[i].uppercased() == "Z"{
                resultArr.append(alphaArr[0+n-1])
            }else{
                if indexArr[i]+n > 25{
                    indexArr[i] = indexArr[i] - 26
                    resultArr.append(alphaArr[indexArr[i]+n])
                }else{
                    resultArr.append(alphaArr[indexArr[i]+n])
                }
            }
        }else{
            resultArr.append(" ")
        }
    }
    
    for i in 0...sizeArr.count-1{
        if sArr[i] != " "{
            if sizeArr[i] == 2{
                resultArr[i] = resultArr[i].lowercased()
            }
        }
    }
    
    return resultArr.joined()
}
```
***
### 더 나은 코드!
```swift
func solution(_ s:String, _ n:Int) -> String {
    return s.utf8.map {
        var code = Int($0)
        switch code {
            case 65...90:
                code = (code + n - 65) % 26 + 65
            case 97...122:
                code = (code + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
}
```

#### 더 나은 코드 풀이 👩🏻‍💻

##### 1. s를 utf-8 형식으로 변환하고 map을 사용하여 code에 Int로 변환시킨 s 문자열의 한 자를 넣어준다.
```return s.utf8.map { var code = Int($0) }```
***

##### 2. code를 검사한다.
- ###### 2-1. code가 65~90 즉 A~Z 중 하나라면 code에 (code + n - 65) % 26 + 65를 넣어준다.
> ###### code 가 89(Y)라면 ( 89 + 3 - 65 ) % 26 + 65 = 66
- ###### 2-2. code가 65~90 즉 a~z 중 하나라면 code에 (code + n - 65) % 26 + 97를 넣어준다.
```swift
    switch code {
        case 65...90:
            code = (code + n - 65) % 26 + 65
        case 97...122:
            code = (code + n - 97) % 26 + 97
        default:
            break
    }
```

##### 3. 다시 알파벳으로 변환하여 return하고 join하여 return한다.
```swift
        return String(UnicodeScalar(code)!)
    }.joined()
```

### END!
