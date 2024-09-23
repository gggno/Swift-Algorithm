import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var s = sizes
    var w = 0
    var h = 0
    
    for i in 0..<s.count {
        s[i].sort()
        
        w = max(w, s[i][0])
        h = max(h, s[i][1])
    }
    
    return w * h
}