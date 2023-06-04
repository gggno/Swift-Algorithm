func solution(_ arr:[Int]) -> Double {
    var cnt = 0
    for i in arr {
        cnt += i
    }
    
    return Double(cnt) / Double(arr.count)
}