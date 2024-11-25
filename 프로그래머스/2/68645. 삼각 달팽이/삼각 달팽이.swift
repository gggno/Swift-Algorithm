import Foundation

func solution(_ n:Int) -> [Int] {
    
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    var cnt = 1
    var x = -1, y = 0
    
    var result: [Int] = []
    
    for i in 0..<n {
        for _ in i..<n {
            if i % 3 == 0 {
                x += 1
            
            } else if i % 3 == 1 {
                y += 1 
            
            } else {
                x -= 1
                y -= 1
            }
            
            arr[x][y] = cnt
            cnt += 1
        }
    }

    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] != 0 {result.append(arr[i][j])}
        }
    }
    
    return result
}