func solution(_ n:Int) -> String {
    var result = ""
    
    for i in 0...(n == 0 ? 0 : n-1){
        i % 2 == 0 ? (result += "수") : (result += "박")
    }
    
    return n == 0 ? "" : result
}