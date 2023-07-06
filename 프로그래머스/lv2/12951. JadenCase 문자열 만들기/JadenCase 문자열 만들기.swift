func solution(_ s:String) -> String {
   
    let str = Array(s)
    var result = ""
    var isConfirm = true
    
    for c in str {
        result += isConfirm ? String(c).uppercased() : String(c).lowercased()
        
        if c == " " {
            isConfirm = true
        } else {
            isConfirm = false
        }
    }
    
    return result
}