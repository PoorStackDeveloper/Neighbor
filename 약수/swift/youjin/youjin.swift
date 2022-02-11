
let C = Int(readLine()!)!
var A = [Int]()

A = (readLine()?.split(separator: " ").map{ Int(String($0))! })!

// C == 1 ? print(A[0]*A[0]) : print(A.max()! * A.min()!)

print(A.max()! * A.min()!)