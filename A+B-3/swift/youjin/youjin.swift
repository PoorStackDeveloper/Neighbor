let T = Int(readLine()!)!
var R = [Int]()

Array(1...T).forEach { i in
    R.append((readLine()?.split(separator: " ").map{Int($0)!}.reduce(0,+))!)
}

R.map{print($0)}
