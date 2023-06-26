func solution(_ a:Int, _ b:Int) -> Int64 {
    var num: Int64 = 0
    
    if a < b {
        for i in 0...b-a {
            num += Int64(a) + Int64(i)
        }
    } else if a > b {
        for i in 0...a-b {
            num += Int64(b) + Int64(i)
        }
    } else {
        return Int64(a)
    }
    
    return num
}