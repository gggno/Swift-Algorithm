import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one = [1, 2, 3, 4, 5]
    let two = [2, 1, 2, 3, 2, 4, 2, 5]
    let three = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var score = [1:0, 2:0, 3:0]
    
    for i in 0..<answers.count {
        if one[i % 5] == answers[i] {
            score[1]! += 1
        }
        
        if two[i % 8] == answers[i] {
            score[2]! += 1
        }
        
        if three[i % 10] == answers[i] {
            score[3]! += 1
        }
    }
    
    return score.sorted{$0.0 < $1.0}.filter{$0.value == score.values.max()}.map{$0.key}
}