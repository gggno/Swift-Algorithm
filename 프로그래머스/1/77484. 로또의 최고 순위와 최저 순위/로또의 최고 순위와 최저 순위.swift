import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let prize: [Int: Int] = [6:1, 5:2, 4:3, 3:4, 2:5, 1:6, 0:6]
    
    var prizeCnt = 0
    
    var my = lottos.sorted(by: >)
    
    var max = 6
    var min = 6
    
    for i in 0..<my.count {
        if win_nums.contains(my[i]) {
            prizeCnt += 1
            min = prize[prizeCnt]!    
            max = prize[prizeCnt]!
            
        } else {
            if my[i] == 0 {
                min = prize[prizeCnt]!
                prizeCnt += my.count - i
                max = prize[prizeCnt]!
                break
            }
        }
    }

    return [max, min]
}