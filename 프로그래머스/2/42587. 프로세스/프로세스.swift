import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var p = priorities
    var l = location
    var cnt = 0
    
    while !p.isEmpty {
        l -= 1
        
        if p[0] >= p.max()! {
            p.removeFirst()
            cnt += 1
            if l < 0 {break}
            
        } else {
            p.append(p.removeFirst())
            if l < 0 {l = p.count - 1}
        } 
    }
    
    return cnt
}