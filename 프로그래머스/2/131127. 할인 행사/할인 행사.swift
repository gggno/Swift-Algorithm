import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var answer = 0

    for i in 0..<(discount.count - 9) {
        var temp = Array(repeating: 0, count: want.count)
        
        for j in i..<(i + 10) {
            if let idx = want.firstIndex(of: discount[j]) {
                temp[idx] += 1
            }
        }

        if number == temp {
            answer += 1
        }
    }

    return answer
}