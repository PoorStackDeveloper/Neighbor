var nArr: [String] = []
var max = 0
var maxIndex = 0
for i in 0...8{
    nArr.append(readLine()!)
    if max < Int(nArr[i])!{
        max = Int(nArr[i])!
        maxIndex = i
    }
}

print(max)
print(maxIndex+1)