var C = Int(readLine()!)!
var R: [Float] = Array(repeating: 0, count: C)

for i in 0...C-1{
    let S = readLine()!.split(separator: " ").map{Int($0)!}
    let A = S.dropFirst().reduce(0, +)/(S[0])
    S.dropFirst().forEach {
        if $0 > A{ R[i] += 1 }
    }
    R[i] = (R[i]/Float(S[0]))*100
}

R.map{ print("\(String(format: "%.3f", $0))%") }