func solution(_ n:Int) -> Int
{
    var num = n
    var arr = [Int]()
    while num > 0{
        arr.append(num%10)
        num /= 10
    }
    
    return arr.reduce(0) { $0 + $1 }
}