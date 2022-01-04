var result = [Int]()
var N = [1, 0]

while(N.reduce(0) {$0 + $1} != 0){
    N = readLine()!.split{ $0 == " " }.map {Int($0)!}
    result.append(N.reduce(0) {$0 + $1})
}

for i in result.dropLast(){ print(i) }