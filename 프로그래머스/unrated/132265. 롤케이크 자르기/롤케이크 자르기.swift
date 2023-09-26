import Foundation

func solution(_ topping:[Int]) -> Int {
    var bro1: [Int: Int] = [:]
    var bro2: [Int: Int] = [:]
    var result = 0
    
    for i in topping {
        bro1[i] = (bro1[i] ?? 0) + 1
    }
    
    for i in topping {
        bro2[i] = (bro2[i] ?? 0) + 1
        bro1[i] = (bro1[i] ?? 0) - 1
        
        if bro1[i] == 0 {
            bro1.removeValue(forKey: i)
        }
        
        if bro1.count == bro2.count {
            result += 1
        }
    }
    
    return result
}