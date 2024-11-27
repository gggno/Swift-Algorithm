import Foundation

func solution(_ s:String) -> Bool
{
    var cnt = 0
    
    for c in s {
        if c == "(" {
            cnt += 1
        } else if c == ")" {
            cnt -= 1
        }
        
        if cnt < 0 {
            return false
        }
    }
    
    if cnt == 0 {
        return true
    } else {
        return false
    }
}