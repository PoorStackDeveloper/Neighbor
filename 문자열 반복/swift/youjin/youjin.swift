import Foundation

let S = readLine()
var N = [String]()

for _ in 0...Int(S!)!-1{
    N.append(contentsOf: readLine()!.components(separatedBy: " "))
}

for i in stride(from: 1, to: N.count, by: 2){
    N[i].map{ for _ in 0...Int(N[i-1])!-1{ print($0, terminator: "") }}
    print("")
}