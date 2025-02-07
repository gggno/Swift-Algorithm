import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var n = arr[0].count
    var zerocnt = 0
    var onecnt = 0
    
    func recursion(_ x: Int, _ y: Int, _ len: Int) {
        var start = arr[x][y]
        
        for i in x..<x+len {
            for j in y..<y+len {
                if arr[i][j] != start {
                    let half = len / 2
                    
                    recursion(x, y, half)
                    recursion(x, y + half, half)
                    recursion(x + half, y, half)
                    recursion(x + half, y + half, half)
                    
                    return
                }
            }
        }
        
        if start == 1 {
            onecnt += 1
        } else {
            zerocnt += 1
        }
    }
    
    recursion(0, 0, n)
    
    return [zerocnt, onecnt]
}