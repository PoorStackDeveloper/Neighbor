func solution(_ n:Int64) -> [Int] {
    return String(n).map{ Int("\($0)")! }.reversed()
}