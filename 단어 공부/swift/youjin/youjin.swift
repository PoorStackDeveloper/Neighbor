var word = readLine()!.uppercased().map { $0 }
var alpha = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
var count = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var max = 0
var maxIndex = [Int]()

for i in 0...word.count-1{
    for j in 0...alpha.count-1{
        if String(word[i]) == String(alpha[j]){
            count[j] += 1
        }
    }
}

for i in 0...count.count-1{
    if count[i] == count.max(){
        maxIndex.append(i)
    }
}

maxIndex.count == 1 ? print(alpha[maxIndex[0]]) : print("?")