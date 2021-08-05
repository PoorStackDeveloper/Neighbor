func solution(_ a:Int, _ b:Int) -> Int64 {
    let arr = Array(a > b ? b ... a: a ... b)
    var result = 0
    if arr.count % 2 == 0{
        result = (a + b) * (arr.count / 2)
    }else{
        let midIndex = arr.index(arr.startIndex, offsetBy: arr.count / 2)
        result = (a + b) * (arr.count / 2) + arr[midIndex]
    }
    
    return Int64(result)
}