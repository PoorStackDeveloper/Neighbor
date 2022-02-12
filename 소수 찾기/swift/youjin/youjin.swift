let C = Int(readLine()!)!
var N = readLine()!.split(separator: " ").map{Int(String($0))!}
var R = 0

for i in 0...N.count-1{
    if N[i] == 1 {R += 1}
    
    for j in 0...N[i]-1{
        if j == 0 {continue}
        if N[i] % j == 0 && j != 1{
            R += 1
            break
        }
    }
}

print(N.count - R)