let N = readLine()!.split(separator: " ").map{Int(String($0))!}
var A = Array(N[0]...N[1])
var S = Int(sqrt(Double(N[1])))

for i in 0...A.count-1{
    if A[i] == 0 { continue }
    
    for j in 1...S{
        if (A[i] % j == 0 && A[i] != j && j != 1) || A[i] == 1{
            A[i] = 0
            break
        }
    }
}

A.removeAll(where: {$0 == 0})
A.map{print($0)}