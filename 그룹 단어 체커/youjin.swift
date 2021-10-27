var n = Int(readLine()!)!
var nArray:[[String]] = []
var showedAlpha: [String] = []
var count = n
 

for i in 0...n-1{
    nArray.append(readLine()!.map{String($0)})
    
}

for i in 0...n-1{
    showedAlpha = []
    for j in 0...nArray[i].count-1{

        if (showedAlpha.contains("\(nArray[i][j])") == true) && (showedAlpha.last != "\(nArray[i][j])"){
            count -= 1
            break
        }else{
            showedAlpha.append("\(nArray[i][j])")
        }
    }
}

print(count)