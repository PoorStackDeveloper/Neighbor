### 평균은 넘겠지

- ##### 백준 ```4344``` 풀어보기

##### 내 전체 코드!
```swift
// 테스트 케이스 개수를 입력받는다.
var C = Int(readLine()!)!

// 테스트 케이스 개수만큼 결과값을 받아야하므로 0을 C개 가지고있는 배열을 선언한다.
var R: [Float] = Array(repeating: 0, count: C)

// C번의 입력과 검사가 필요하기땀시롱 for문 돌리기
for i in 0...C-1{
    // 학생의 수와 N명의 점수를 입력받고 split으로 공백을 기준으로 문자열을 배열로 만들어서 반환하고 그 배열을 map을 통해 [Int]로 형변환
    let S = readLine()!.split(separator: " ").map{Int($0)!}

    // S 배열의 첫번째 요소는 학생 수기때문에 학생 수는 dropFirst로 버리고 reduce로 모든 학생 점수를 더하고 학생 수로 나눠서 평균을 구해 A에 담는다.
    let A = S.dropFirst().reduce(0, +)/(S[0])

    // 마찬가지고 S배열의 첫번째 요소는 학생 수기때문에 버리고 forEach문을 통해서 학생 개개인의 점수를 검사한다.
    S.dropFirst().forEach {
        // 학생의 점수가 평균을 넘으면 R[i]에 1을 더해준다 ㅎㅎ
        if $0 > A{ R[i] += 1 }
    }

    // R[i]에 평균을 넘는 학생들의 비율을 담는다.
    R[i] = (R[i]/Float(S[0]))*100
}

// 평균 넘는 학생들의 비율이 담긴 R 배열을 map을 통해 학생들의 비율을 하나하나 탐색하여 소수점 셋째 자리까지 잘라 출력한다. %도 붙여서!
R.map{ print("\(String(format: "%.3f", $0))%") }
```