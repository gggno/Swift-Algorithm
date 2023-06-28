func solution(_ s:String) -> String {
    var compare = 0
    var result = ""
    
    for i in s {
        if compare % 2 == 0 || compare == 0 {
            result += String(i).uppercased()
            compare += 1
        } else {
            result += String(i).lowercased()
            compare += 1
        }
        
        if i == " " {
            compare = 0
        }
    }
    
    return result
    
}