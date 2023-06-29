import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for n1 in 0..<commands.count {
        var arr1: [Int] = []
       
        for n2 in commands[n1][0]-1..<commands[n1][1] {
            arr1.append(array[n2])
        }
        arr1.sort()
        result.append(arr1[commands[n1][2]-1])
    }
    
    return result
}