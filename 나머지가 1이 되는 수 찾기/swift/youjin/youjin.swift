import Foundation

func solution(_ n:Int) -> Int {
    var x = 2
    for i in 0...n{
        
        if n%x == 1{
            print(x)
            return x
        }
        x += 1
    }
    return 0
}