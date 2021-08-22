func solution(_ s:String) -> String {
    var j = 0
    var result = ""
    for i in s{
        if i == " " { j = -1 }
        j%2==0 ? (result += i.uppercased()) : (result += i.lowercased())
        j += 1
    }
    return result
}