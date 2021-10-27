var num: [String] = (readLine()?.map{ String($0) })!
var number = [Int]()

for i in 0...num.count-1{
    switch num[i]{
    case "A","B","C":
        number.append(3)
    case "D","E","F":
        number.append(4)
    case "G","H","I":
        number.append(5)
    case "J","K","L":
        number.append(6)
    case "M","N","O":
        number.append(7)
    case "P","Q","R","S":
        number.append(8)
    case "T","U","V":
        number.append(9)
    case "W","X","Y","Z":
        number.append(10)
    default:
        number.append(11)
    }
}

print(number.reduce( 0, + ))