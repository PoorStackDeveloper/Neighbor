func solution(_ s:String) -> Int {

    var result = [String]()
    var beforeCheckingText = ""
    for c in s {
        if c.isLetter == true{
            switch c {
            case "z":
                result.append("0")
                beforeCheckingText = "z"
                break
            case "o":
                if beforeCheckingText == "w"{
                    break
                }
                
                if beforeCheckingText == "f"{
                    break
                }
                
                if beforeCheckingText == "r"{
                    beforeCheckingText = "o"
                    break
                }
                result.append("1")
                beforeCheckingText = "o"

                break
            case "w":
                result.append("2")
                beforeCheckingText = "w"
                break
            case "h":
                
                if beforeCheckingText == "g"{
                    
                    break
                }
                result.append("3")
                beforeCheckingText = "h"
                break
            case "u":
                result.append("4")
                beforeCheckingText = "u"
                break
            case "v":
                if beforeCheckingText == "e"{
                    result.append("7")
                    beforeCheckingText = "e"
                    break
                }else{
                    result.append("5")
                    beforeCheckingText = "v"
                    break
                }
            case "x":
                result.append("6")
                beforeCheckingText = "x"
                break
            case "i":
                if beforeCheckingText == "n"{
                    print(beforeCheckingText)
                    result.append("9")
                    beforeCheckingText = "i"
                    break
                }
                
                if  beforeCheckingText == "e"{
                    result.append("8")
                    beforeCheckingText = "e"

                    break
                }
                
                beforeCheckingText = "i"
                
                break
            
            default:
                beforeCheckingText = String(c)
                break
            }
        }else{
            result.append(String(c))
        }
    }
    
    print(result)
    
    return Int(result.joined())!
}