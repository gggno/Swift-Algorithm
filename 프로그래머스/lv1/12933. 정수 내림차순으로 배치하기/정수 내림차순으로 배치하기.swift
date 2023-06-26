func solution(_ n:Int64) -> Int64 {
    var arr: [Int64] = []
    var result: Int64 = 0
    
    for num in String(n) {
        arr.append(Int64(String(num))!)
    }
    arr.sort(by: >)
    
    for num in arr {
        result *= 10
        result += num
    }
    
    return result
}