var N = Int(readLine()!)!
var NN = 0
var C = 0

while NN != N{
    if C == 0{ NN = N }
    
    let SN = "\(NN)".map{Int(String($0))!}
    let LN = SN[SN.endIndex-1]
    NN = Int("\(LN)\(String(SN.reduce(0,+)).map{$0}.reversed()[0])")!
    
    C += 1
}

print(C == 0 ? 1 : C)