let n = readLine()
var nArr:[Int] = []
nArr = (readLine()?.split(separator: " ").map{ Int(String($0))! })!
print("\(nArr.min()!) \(nArr.max()!)")