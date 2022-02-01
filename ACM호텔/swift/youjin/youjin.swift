let T = Int(readLine()!)!
var A = [Int]()
var R = [String]()

for _ in 0...T-1{
    A = (readLine()?.split{$0 == " "}.map{Int($0)!})!
    
    var F = 0
    var N = 0
    
    if A[0] == 1{
        F = 1
    }else if A[2] % A[0] == 0{
        F = A[0]
    }else if A[2] <= A[0]{
        F = A[2]
    }else {
        F = A[2]%A[0]
    }
    
    if A[2]%A[0]==0{
        N = A[2]/A[0]
    }else if A[0] == 1{
        N = A[2]
    }else if A[2] < A[0]{
        N = 1
    }else{
        N = A[2]/A[0]+1
    }
    
    if N < 10 {
        R.append("\(F)0\(N)")
    }else{
        R.append("\(F)\(N)")
    }
}

R.map{print($0)}