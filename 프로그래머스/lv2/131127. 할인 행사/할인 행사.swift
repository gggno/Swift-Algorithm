import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    let count = number.reduce(0){$0+$1}
    var result = 0
    var dic: [String: Int] = [:]
    
    for i in 0..<want.count {
        dic[want[i]] = number[i]
    }

    for i in 0...discount.count-count {
        var dic2 = dic
        for j in i..<i+10 {
            if let count = dic2[discount[j]] {
                dic2[discount[j]] = count - 1
            }
        }
        for j in dic2 {
            if j.value != 0 {
                result -= 1
                break
            }
        }
        result += 1
    }
    
    return result
}