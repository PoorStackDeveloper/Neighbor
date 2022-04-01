func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var time: [Int] = []
    var flag = 0
    var result: [Int] = []
    
    progresses.enumerated().forEach{
        time.append(Int(ceil(Double((100-$1))/Double(speeds[$0]))))
    }
    
    result.append(1)
    flag = time[0]
    time.remove(at: 0)
    
    time.enumerated().forEach{
        if $1 > flag{
            result.append(1)
            flag = $1
        }else{
            result[result.endIndex-1] += 1
        }
    }
    
    return result
}
