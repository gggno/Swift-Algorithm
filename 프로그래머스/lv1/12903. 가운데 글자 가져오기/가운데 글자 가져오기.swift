func solution(_ s:String) -> String {
    if Array(s).count % 2 == 0 {
        return String(Array(s)[((Array(s).count / 2) - 1)...Array(s).count / 2])
    } else {
        return String(Array(s)[Array(s).count / 2])
    }
    
    
    
}