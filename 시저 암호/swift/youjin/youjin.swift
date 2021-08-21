func solution(_ s:String, _ n:Int) -> String {
    let alphaArr = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var sArr = [String]()
    var sizeArr = [Int]() // 1이 대문자, 2가 소문자
    var resultArr = [String]()
    var indexArr = [Int]()
    
    for i in s{
        sArr.append(String(i))
        if String(i) == i.uppercased(){
            sizeArr.append(1)
        }else{
            sizeArr.append(2)
        }
    }

    for i in 0...sArr.count-1{
        for j in 0...alphaArr.count-1{
            if sArr[i] == " "{
                indexArr.append(99)
                break
            }else if sArr[i].uppercased() == alphaArr[j]{
                indexArr.append(j)
            }
        }
    }
    
    for i in 0...sArr.count-1{
        if sArr[i] != " "{
            if sArr[i].uppercased() == "Z"{
                resultArr.append(alphaArr[0+n-1])
            }else{
                if indexArr[i]+n > 25{
                    indexArr[i] = indexArr[i] - 26
                    resultArr.append(alphaArr[indexArr[i]+n])
                }else{
                    resultArr.append(alphaArr[indexArr[i]+n])
                }
            }
        }else{
            resultArr.append(" ")
        }
    }
    
    for i in 0...sizeArr.count-1{
        if sArr[i] != " "{
            if sizeArr[i] == 2{
                resultArr[i] = resultArr[i].lowercased()
            }
        }
    }
    
    return resultArr.joined()
}