import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var result: Int = 0
    
    for i in 0..<discount.count-9 {
        var temp = Array(repeating: 0, count: want.count)
        
        for j in i..<i+10 {
            if let index = want.firstIndex(of: discount[j]) {
                temp[index] += 1
            }
        }
        
        result += temp == number ? 1 : 0
    }
    
    return result
}