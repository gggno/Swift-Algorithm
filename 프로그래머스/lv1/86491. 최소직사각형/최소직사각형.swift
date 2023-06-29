import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var size = sizes
    var w = 0
    var l = 0
    
    for i in 0..<size.count {
        size[i].sort()
        
        w = max(w, size[i][0])
        l = max(l, size[i][1])
    }
    
    return w * l
}