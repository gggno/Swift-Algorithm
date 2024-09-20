import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var dd = d.sorted()
    var cnt = budget
    var result = 0
    
    for i in dd {
        if cnt - i < 0 {
            return result
        
        } else {
            cnt -= i
            result += 1
        }
    } 
    
    return result
}