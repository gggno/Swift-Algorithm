func solution(_ s:String) -> Int {
    var result = 0
    
    for num in s {
        result *= 10
        
        if String(num) == "-" || String(num) == "+"{
            continue
        }
        
        result += Int(String(num))!
    }
    
    return s.contains("-") ? result * -1 : result
}