import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var boardArr = board
    var result: [Int] = []
    var num = 0

    for i in moves {
        for j in 0..<boardArr.count {
            if boardArr[j][i-1] != 0 {
                result.append(boardArr[j][i-1])
                boardArr[j][i-1] = 0

                if result.count > 1 && result[result.count-1] == result[result.count-2] {
                    result.popLast()!
                    result.popLast()!
                    num += 2
                }
                break
            }
        } 
    }
    
    return num
}