import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dic: [String: Int] = [:]
    var result = 1
    
    for i in clothes {
        if dic[i[1]] == nil {
            dic[i[1]] = 1
        } else {
            dic[i[1]]! += 1
        }
    }
    
    for i in dic {
        result *= i.value + 1
    }
    
    return result - 1
}