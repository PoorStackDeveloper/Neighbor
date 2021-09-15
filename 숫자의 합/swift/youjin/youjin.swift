var num = readLine()
var num2 = readLine()
print(num2!.map{ Int(String($0))! }.reduce(0, +))
