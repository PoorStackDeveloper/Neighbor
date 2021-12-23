var mulNum = 1
var cnt: [Int] = Array(repeating: 0, count: 10)

for _ in 0...2{
    mulNum *= Int(readLine()!)!
}

for i in 0...String(mulNum).count-1{
    for j in 0...9{
        if String(mulNum).map({$0})[i] == "0123456789".map({$0})[j]{
            cnt[j] += 1
        }
    }
}

for i in 0...cnt.count-1{
    print(cnt[i])
}