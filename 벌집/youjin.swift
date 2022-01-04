var N = Int(readLine()!)!
var six = 1
var C = 1

while(N>six){
    six += 6*C
    C += 1
}

print(C)