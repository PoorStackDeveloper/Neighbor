let T = Int(readLine()!)!
var num = [Int]()
var arr = [Int]()

for _ in 0...T-1{
    num.append(Int(readLine()!)!)
}

for i in 0...num.count-1{
    arr = [1,2,4]
    
    for j in 0...9{
        arr.append(arr[0+j]+arr[1+j]+arr[2+j])
        if arr.count == num[i] {break}
    }
    
    if num[i] < 4{
        print(arr[num[i]-1])
    }else{
        print(arr[arr.endIndex-1])
    }
}