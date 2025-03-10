func solution(_ num:Int) -> Int {
    var n = num
    var result = 0
    
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = n * 3 + 1
        }
        result += 1
    }
    
    return result < 500 ? result : -1
}