let Un = Int(readLine()!)!
let Dn = String(readLine()!)
var R = [Int]()

for n in Dn{
    R.append(Un*Int(String(n))!)
}

print("\(R[2])\n\(R[1])\n\(R[0])\n\(Un*Int(String(Dn))!)")