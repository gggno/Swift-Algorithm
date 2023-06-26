func solution(_ n:Int64) -> [Int] {
    let str = String(n)
    var result: [Int] = []
    
    for i in str {
        result.append(Int(String(i))!)
    }
    
    return result.reversed()
}