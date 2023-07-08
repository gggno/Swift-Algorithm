import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic: [String: Int] = [:]
    var ans = 1  

    for str in clothes {
        if let d = dic[str[1]] {
            dic[str[1]] = d + 1
        } else {
            dic[str[1]] = 1
        }
    }

    for i in dic {
        ans *= i.value + 1
    }
    
    return ans - 1
}