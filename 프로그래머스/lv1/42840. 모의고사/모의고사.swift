import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one     = [1, 2, 3, 4, 5]
    let two     = [2, 1, 2, 3, 2, 4, 2, 5]
    let three   = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var re1 = [0, 0, 0]
    var result: [Int] = []
    
    for i in 0..<answers.count {
        if answers[i] == one[i % 5] {re1[0] += 1}
        if answers[i] == two[i % 8] {re1[1] += 1}
        if answers[i] == three[i % 10] {re1[2] += 1}
    }
    
    for i in 0..<re1.count {
        if re1[i] == re1.max() {
            result.append(i + 1)
        }
    }
    
    return result
}