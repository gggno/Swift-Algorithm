func solution(_ num:Int) -> Int {
    var cnt = 0
    var n = num
    
    while n != 1 {
        if n % 2 == 0 {
            cnt += 1
          n /= 2  
        } else if n % 2 != 0 {
            cnt += 1
            n = n * 3 + 1
        }
        
        if cnt >= 500 {
            return -1
        }
    }
    
    return cnt
}