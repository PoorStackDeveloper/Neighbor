func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { Int(String($0))! % divisor == 0 }
    return result.count == 0 ? [-1] : result.sorted(by: <)
}