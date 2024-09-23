import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result: [Int] = []
    
    for i in 0..<commands.count {
        let sArr = array[commands[i][0]-1...commands[i][1]-1].sorted()
        result.append(sArr[commands[i][2]-1])
    }
    
    return result
}