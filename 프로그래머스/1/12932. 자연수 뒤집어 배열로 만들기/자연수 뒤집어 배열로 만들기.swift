func solution(_ n:Int64) -> [Int] {
    var result: [Int] = []
    
    for i in String(n) {
        result.append(Int(String(i))!)
    }
    
    return result.reversed()
}