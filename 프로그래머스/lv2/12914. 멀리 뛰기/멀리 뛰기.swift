func solution(_ n:Int) -> Int {
    
    var arr = Array(repeating: 0, count: n)
    if n < 3 { return n }
    
    arr[0] = 1
    arr[1] = 2
    
    for i in 2..<n {
        arr[i] = (arr[i-1]+arr[i-2]) % 1234567
    }
    return arr[n-1]
}