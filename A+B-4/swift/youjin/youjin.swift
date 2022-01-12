var R = [Int]()

while let N = readLine() {
    R.append(N.split{$0 == " "}.map{Int($0)!}.reduce(0, +))
}

R.map{print($0)}