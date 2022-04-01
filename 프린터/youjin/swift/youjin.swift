var num: [Int] = []
var printCnt = 0

func solution(_ priorities:[Int], _ location:Int) -> Int {
    num = priorities
    var myNum = location

    for _ in 0..<num.count*num.count{
        if existBig(num[0]) || num[0] == 0{
            dequeueEnqueue()
            if myNum == 0{
                myNum = num.count-1
            }else{
                myNum -= 1
            }
            
        }else{
            printCnt += 1
            if myNum == 0{
                return printCnt
            }else{
                num[0] = 0
                dequeueEnqueue()
                myNum -= 1
            }
        }
        
    }
    
    return 0
}

func dequeueEnqueue(){
    num.append(num[0])
    num.remove(at: 0)
}

func existBig(_ n: Int) -> Bool{
    for i in 0..<num.count{
        if num[i] > n{
            return true
        }
    }
    return false
}