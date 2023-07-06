import Foundation

func solution(_ s:String) -> Bool {
    var cnt = 0
    var str = Array(s)
    
    if s.last == "(" {
        return false
    }
    
    for i in str {
        if cnt < 0 {
            return false
        }
        
        if i == "(" {
            cnt += 1
        } else {
            cnt -= 1
        }
    }
    return cnt == 0 ? true : false
}