### 숫자 문자열과 영단어

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210803 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. 결과값을 담아줄 변수와, 그 전에 검사했던 글자를 담아줄 변수를 선언한다.
```swift
    var result = [String]()
    var beforeCheckingText = ""
```
***
##### 2. for 문을 사용하여 s 문자열의 요소들을 모두 검사한다.
- ###### ex) 1 s e v e n s i x 2 3 
```for c in s {}```
***
##### 3. isLetter을 사용하여 그 요소가 글자인지 숫자인지 판별한다.
```if c.isLetter == true{}else{}```
***
##### 4. 이제 c 즉 s의 문자열의 요소를 검사한다.
##### How?
- ###### zero에는 z, two에는 w 와 같이 다른 숫자 영어 글자에는 들어있지 않은 글자를 포함하고 있는 0(zero)과 2(two)는 바로 결과값에 넣어준다.
```swift
    switch c {
    case "z":
        result.append("0")
        beforeCheckingText = "z"
        break
    case "w":
        result.append("2")
        beforeCheckingText = "w"
        break
```

- ###### 하지만 one을 한번 생각해보자.
###### one의 첫번째 글자 o일 때 1을 결과값에 넣어준다면, two를 검사할 때도 1에 들어갈 것이고, four을 검사할 때도 들어갈 것이다. <br>즉 o을 포함하고 있는 one이 아닌 다른 것일 때도 1이 들어간다는 것이다.

```
    case "o":
        result.append("1")
        beforeCheckingText = "o"
        break
```
##### Solution?
- ###### 그래서 위에 선언했던 ```beforeCheckingText```를 사용하였다.
###### two를 검사할 때 마지막 o을 검사할 때 o case에 들어온다면 ```beforeCheckingText```를 검사하여 ```beforeCheckingText```가 w이면 이 case에서 벗어나게 구현하였다.<br><br>이런식으로 모든 case를 구현하였다.

```swift
    case "o":
        if beforeCheckingText == "w"{
            break
        }
```

***
##### 5. 만약 맞는 case가 없다면?
- ###### c를 beforeCheckingText에 대입하고 삽입 없이 다음 문자열의 요소를 검사한다.
```swift
    default:
        beforeCheckingText = String(c)
        break
    }
```

##### 6. 만약 숫자라면?
- ###### 숫자라면 그냥 결과값에 넣어준다.
```swift
else{
    result.append(String(c))
}
```
***
##### 7. 마지막으로 [String]타입을 String로 join한 후 Int로 형변환 해주면 끝!
```return Int(result.joined())!```
***
##### 내 전체 코드!
```swift
func solution(_ s:String) -> Int {

    var result = [String]()
    var beforeCheckingText = ""
    for c in s {
        if c.isLetter == true{
            switch c {
            case "z":
                result.append("0")
                beforeCheckingText = "z"
                break
            case "o":
                if beforeCheckingText == "w"{
                    break
                }
                
                if beforeCheckingText == "f"{
                    break
                }
                
                if beforeCheckingText == "r"{
                    beforeCheckingText = "o"
                    break
                }
                result.append("1")
                beforeCheckingText = "o"

                break
            case "w":
                result.append("2")
                beforeCheckingText = "w"
                break
            case "h":
                
                if beforeCheckingText == "g"{
                    
                    break
                }
                result.append("3")
                beforeCheckingText = "h"
                break
            case "u":
                result.append("4")
                beforeCheckingText = "u"
                break
            case "v":
                if beforeCheckingText == "e"{
                    result.append("7")
                    beforeCheckingText = "e"
                    break
                }else{
                    result.append("5")
                    beforeCheckingText = "v"
                    break
                }
            case "x":
                result.append("6")
                beforeCheckingText = "x"
                break
            case "i":
                if beforeCheckingText == "n"{
                    print(beforeCheckingText)
                    result.append("9")
                    beforeCheckingText = "i"
                    break
                }
                
                if  beforeCheckingText == "e"{
                    result.append("8")
                    beforeCheckingText = "e"

                    break
                }
                
                beforeCheckingText = "i"
                
                break
            
            default:
                beforeCheckingText = String(c)
                break
            }
        }else{
            result.append(String(c))
        }
    }
    
    print(result)
    
    return Int(result.joined())!
}
```
***
##### 더 나은 코드!
```swift
func solution(_ s:String) -> Int {
    let numString = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    let numArr: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var ret = s
    var count = 0

    if Int(s) != nil {
        return Int(s)!
    } else {
        for (i, elem) in numString.enumerated() {
            if s.contains(elem) {
                ret = ret.replacingOccurrences(of: elem, with: numArr[i])
            } else {
                continue
            }
        }
    }
    if ret.contains("0") {
        count += 1
    }
    return count > 1 ? 0 : Int(ret)!
}

```

##### 1. 숫자만 있다면 바로 숫자를 반환한다
```if Int(s) != nil {}```

##### 2. 글자가 있다면 i는 0부터 numString.count까지 반복하고 elem는 numString의 요소를 순서대로 반복한다.
```for (i, elem) in numString.enumerated() {}```

##### 3. s에 해당 글자가 있는지 검사한다.
```if s.contains(elem) {}```


##### 4. s에있는 해당 글자를 숫자로 변경한다.
```ret = ret.replacingOccurrences(of: elem, with: numArr[i])```

##### 5. s에 0이 들어가있다면 count ++
```    
    if ret.contains("0") {
        count += 1
    }
```

##### 6. count가 1보다 크면 0을 반환하고 1보다 작거나 같으면 ret을 반환한다
```return count > 1 ? 0 : Int(ret)!```

### END!
