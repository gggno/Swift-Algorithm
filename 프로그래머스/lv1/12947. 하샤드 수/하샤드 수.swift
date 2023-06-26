func solution(_ x:Int) -> Bool {
    var sum = 0
    
    for num in String(x) {
        sum += Int(String(num))!
    }
    
    return x % sum == 0 ? true : false
}