import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    
    for i in signs.indices {
        result += signs[i]  == true ? absolutes[i] : -absolutes[i]
    }
    return result
}