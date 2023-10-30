import Foundation

func solution(_ ingredient:[Int]) -> Int {
    
    var stack: [Int] = []
    var result = 0
    
    for i in ingredient {
        stack.append(i)
        
        if stack.last == 1 {
            let stack2 = stack.suffix(4)
            if stack2 == [1, 2, 3, 1] {
                result += 1
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
            }
        }
    }
    
    return result
}