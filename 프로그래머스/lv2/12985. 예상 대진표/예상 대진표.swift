import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var aa = a
    var bb = b
    var answer = 0
    
    while true {
        
        if aa % 2 == 0 {
            aa /= 2
        } else {
            aa = (aa + 1) / 2
        }
        
        if bb % 2 == 0 {
            bb /= 2
        } else {
            bb = (bb + 1) / 2
        }
        answer += 1
        
        if aa == bb {
            return answer
        }
    }
}