func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var result = ""
    var all = ""
    for i in 0...t*m {
        all += String(i, radix: n).uppercased()
    }
    
    var index = p-1
    for (i, s) in all.enumerated() {
        if i == index {
            result += String(s)
            index += m
            if result.count == t {
                return result
            }
        }
    }
    
    return result
}