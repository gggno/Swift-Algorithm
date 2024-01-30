import Foundation

func solution(_ targets:[[Int]]) -> Int {
    var answer = 0
        
    let sortedTargets = targets.sorted { $0[1] < $1[1] }

    var x = 0

    for i in 0..<sortedTargets.count {
        if x <= sortedTargets[i][0] {
            x = sortedTargets[i][1]
            answer += 1   
        }    
    }
    
    return answer
}