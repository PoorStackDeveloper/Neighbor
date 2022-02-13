// 프로그래머스 - 노가다
func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var nArray = [Int]()
    var mArray = [Int]()
    var result = [Int]()
    
    for i in 1...n{
        if n%i == 0 {
            nArray.append(i)
        }
    }
    
    for i in 1...m{
        if m%i == 0 {
            mArray.append(i)
        }
    }
    
    nArray.reverse()
    mArray.reverse()

    for i in 0...nArray.count-1{
        if result.count != 0 {break}
        for j in 0...mArray.count-1{
            if nArray[i] == mArray[j]{
                result.append(nArray[i])
            }
        }
    }

    for i in stride(from: n, through: 10000, by: n) {
        if result.count != 1 {break}
        for j in stride(from: m, through: 10000, by: m) {
            if i == j {
                result.append(i)
                print(result)
            }
        }
    }
    
    
    return result
}


// 백준 - 유클리드 호제법
let N = readLine()!.split(separator: " ").map{Int(String($0))!}
var M = N.min()!
var A = N.max()!%M
var R = M

while A != 0{
    if M % A == 0{
        R = A; break
    }
    
    let T = A
    A = M % A
    M = T
}

print("\(R) \(N.reduce(1, *)/R)")