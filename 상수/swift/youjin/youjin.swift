var num = readLine()?.split(separator: " ")
var a = String(num![0].map{ $0 }.reversed())
var b =  String(num![1].map{ $0 }.reversed())

print(a > b ? a : b)