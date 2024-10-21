import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var prog = progresses
    var sp = speeds
    var result: [Int] = []
    
    while !prog.isEmpty {
        for i in 0..<prog.count {
            prog[i] += sp[i]
        }
        
        if prog.first! >= 100 {
            var cnt = 0
            
            while prog.first! >= 100 {
                prog.removeFirst()
                sp.removeFirst()
                cnt += 1
                
                if prog.isEmpty {
                    break
                }
            }
            
            result.append(cnt)
        }
    }
    
    return result
}