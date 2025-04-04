import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    
    var stack:[Int] = []
    
    for i in 0..<numbers.count {
        
        while !stack.isEmpty && numbers[stack.last!] < numbers[i] {
            result[stack.popLast()!] = numbers[i]
        }
        
        stack.append(i)
    }
    
    return result
}