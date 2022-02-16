var height = [Int]()
var limit = 100
var result = [Int]()

for _ in 0...8{
    height.append(Int(readLine()!)!)
}

result = height

for i in 0...8{
    if height[i] > 79 { height[i] = 0 }
    height = result
    
    for j in 0...8{
        if i != j{
            height = result
            height[j] = 0; height[i] = 0

            if height.reduce(0, +) == 100{ break }
        }
    }
    
    if height.reduce(0, +) == 100{ break }
}

height.removeAll(where: {$0 == 0})
height.sorted().map{print($0)}