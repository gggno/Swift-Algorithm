import Foundation

func solution(_ hp:Int) -> Int {
    var result = 0
    var total: Int = hp
    
    if total / 5 > 0 {
        result += total / 5
        total = total % 5
    } 
    if total / 3 > 0 {
        result += total / 3
        total = total % 3
    }

    if total / 1 > 0 {
        result += total
    }
    
    return result
}