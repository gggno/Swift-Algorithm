func solution(_ n:Int64) -> Int64 {
    var num: Int64 = 1
    while n >= num {
        if num * num == n {
            return (num+1) * (num+1)
        } else {
            num += 1
        }
    }
    return -1
}