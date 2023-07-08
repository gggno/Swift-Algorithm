import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var prog = progresses
    var spd = speeds
    var result: [Int] = []
    var cnt = 0
    
    while !prog.isEmpty {
        for i in 0..<prog.count {
            prog[i] += spd[i]
        }
        
        if prog.first! >= 100 {
            while prog.first! >= 100 {
                prog.removeFirst()
                spd.removeFirst()
                cnt += 1
            
                if prog.isEmpty {
                    break
                }
            }
            result.append(cnt)
            cnt = 0
        }
    }
    
    return result
}