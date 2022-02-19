let ESM = readLine()!.split(separator: " ").map{Int(String($0))!}
var E = ESM[0]; var S = ESM[1]; var M = ESM[2]
var e = 0, s = 0, m = 0, count = 0

while true{
    if E == e && S == s && M == m{
        print(count)
        break
    }
    
    if e > 15 { e = 1 }
    else if s > 28 { s = 1 }
    else if m > 19 { m = 1 }
    else {
        s += 1
        e += 1
        m += 1
        count += 1
    }
}