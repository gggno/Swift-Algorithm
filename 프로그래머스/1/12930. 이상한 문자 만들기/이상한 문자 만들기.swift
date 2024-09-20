func solution(_ s:String) -> String {
    
    var str = ""
    var ss = Array(s)
    var state = true
    
    for i in 0..<ss.count {
        if String(ss[i]) == " " {
            str += String(ss[i])
            state = true
            continue
        }
        
        if state {
            str += String(ss[i]).uppercased()
            state = false        
        } else {
            str += String(ss[i]).lowercased()
            state = true    
        }    
    }
    
    return str
}