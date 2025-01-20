import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var prog = progresses
    var spe = speeds
    var result: [Int] = []
    
    while !prog.isEmpty {
        for p in 0..<prog.count {
            prog[p] += spe[p]
        }
        
        var cnt = 0
        while prog.first! >= 100 {
            prog.removeFirst()
            spe.removeFirst()
            
            cnt += 1
            
            if prog.isEmpty {
                break
            }
        }
        
        if cnt > 0 {
            result.append(cnt)
        }
    }
    
    return result
}