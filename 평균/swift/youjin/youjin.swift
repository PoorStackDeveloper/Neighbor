var N = Double(readLine()!)!
var A = readLine()!.split{$0 == " "}.map{Double($0)!}
var M = A.max()!

A.remove(at: A.firstIndex(of: M)!)

print((A.map{ $0/M*100 }.reduce(0){$0 + $1}+100)/N)