var N = Int(readLine()!)!
var R = Array(repeating: 0, count: N)

for i in 0...N-1{
    readLine().map {
        var c = 1
        $0.map{ a in
            if a == "O"{
                R[i] += c
                c += 1
            }else{
                c = 1
            }
        }
    }
}

R.map{print($0)}