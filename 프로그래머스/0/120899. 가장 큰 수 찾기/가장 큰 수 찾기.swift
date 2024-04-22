import Foundation

func solution(_ array:[Int]) -> [Int] {
    
    var num = 0
    var index = 0
    
    for i in 0..<array.count {
        if num < array[i] {
            num = array[i]
            index = i
        }
    }
    
    return [num, index]
}