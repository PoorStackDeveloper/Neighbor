### A+B-5

- ##### 백준 ```10952``` 풀어보기

##### 내 전체 코드!
```swift
var result = [Int]()
var N = [1, 0]

// N의 요소들을 모두 더한 값이 0이 아니라면 while 문을 실행한다.
while(N.reduce(0) {$0 + $1} != 0){
    // 입력받은 문자를 공백으로 분리하고 Int로 형변환 하여 N에 할당한다.
    N = readLine()!.split{ $0 == " " }.map {Int($0)!}

    // result에 N의 요소를 모두 더한 값을 삽입한다.
    result.append(N.reduce(0) {$0 + $1})
}

// result의 마지막 값은 0과 0을 더한 값이므로 dropLast를 통해 마지막 요소를 제거한 후에 for문을 통해 result의 모든 요소들을 출력한다.
for i in result.dropLast(){ print(i) }
```

##### 좋은 코드
```Swift
while true{
    // 입력과 합을 분리하지않고 한번에 처리했다.
    var a=readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+)
    if (a==0) {break}
    print(a)
}
```