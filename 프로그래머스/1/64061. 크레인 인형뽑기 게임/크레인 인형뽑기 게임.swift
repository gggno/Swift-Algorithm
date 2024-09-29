import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var b = board
    var stack: [Int] = []
    var result = 0
    
    for i in moves {
        for j in 0..<b.count {
            if b[j][i-1] != 0 {
                stack.append(b[j][i-1])
                b[j][i-1] = 0
               
                break
            }
        }
        
        while stack.count > 1 && stack[stack.count-1] == stack[stack.count-2] {
            stack.removeLast()
            stack.removeLast()
            result += 1
        }
    }
    
    return result * 2
}