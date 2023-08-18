import Foundation

func solution(_ s:String) -> Int {
    var count = 0
    var x = s.first
    var left = 0
    var right = 0
    
    for letter in s {
        if x == nil {
            x = letter
        }
        
        if x == letter {
            left += 1
        } else {
            right += 1
        }
        
        if left == right {
            count += 1
            left = 0
            right = 0
            x = nil
        }
    }
    
    if x != nil {
        count += 1
    }
    
    return count
}