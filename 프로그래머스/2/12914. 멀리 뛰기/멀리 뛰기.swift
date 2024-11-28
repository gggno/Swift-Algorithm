func solution(_ n:Int) -> Int {
    
    var arr = [1, 2]
    
    if n < 3 {
        return n % 1234567
    }
    
    for i in 2..<n {
        arr.append((arr[i-1] + arr[i-2]) % 1234567)
    }
    
    return arr.last! % 1234567
}