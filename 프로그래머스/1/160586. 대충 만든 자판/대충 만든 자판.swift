import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    var dic: [Character: Int] = [:]
    
    for i in keymap {
        let arr = Array(i)
        for (index, j) in arr.enumerated() {
            if dic[j] == nil {
                dic[j] = index+1
            } else {
                if dic[j]! > index+1 {
                    dic[j]! = index+1
                }
            }
        }
    }
    
    var result: [Int] = [] 
    for i in targets {
        result.append(0)
        
        for j in i {
            if let data = dic[j] {
                result[result.count-1] += data
            } else {
                result[result.count-1] = -1
                break
            }
        }
    }
    
    return result
}