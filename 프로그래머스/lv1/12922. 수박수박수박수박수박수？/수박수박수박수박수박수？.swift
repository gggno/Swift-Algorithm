func solution(_ n:Int) -> String {
    var str = ""
    
    for i in 1...n {
        str += i % 2 == 0 ? "박" : "수"
    }
    return str
}