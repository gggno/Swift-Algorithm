import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = 0
    
    for num in 0...9 {
        if numbers.contains(num) {
            continue
        } else {
            result += num
        }
    }
    return result
}