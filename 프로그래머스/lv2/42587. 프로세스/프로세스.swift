import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var p = priorities
    var l = location
    var result = 0
    
    while !p.isEmpty {
        let max = p.max()!
        l -= 1
        
        if max == p[0] {
            p.removeFirst()
            result += 1
            
            if l < 0 {break}
            
        } else {
            p.append(p.removeFirst())
            if l < 0 {
                l = p.count - 1
            }
        }
    }
    
    return result
}