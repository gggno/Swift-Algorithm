import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var section = section
    var arr: [Int] = Array(repeating: 1, count: n+1)
    var result = 0
    var range = m
    var index = 0
    
    for i in section {
        arr[i] = 0
    }
    
    while index < arr.count {
        if arr[index] == 0 {
            result += 1
            index += range
        } else {
            index += 1
        }
    }
    
    return result
}