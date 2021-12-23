var n = [Int]()
var r = 0

for _ in 0...9{
    n.append( readLine().map{ Int($0)!}! % 42 )
}

for i in 0...n.count-1{
    for j in 0...n.count-1{
        if n[i] == n[j] && i != j{
            n[i] = -1
            r += 1
        }
    }
}

print(10-r)