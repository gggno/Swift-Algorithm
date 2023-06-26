func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr: [Int64] = []
    
    for num in 1...n {
        arr.append(Int64(num)*Int64(x))
    }
    
    return arr
}