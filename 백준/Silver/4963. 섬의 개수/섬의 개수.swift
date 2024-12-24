import Foundation

let dx = [1, -1, 0, 0, -1, 1, -1, 1]
let dy = [0, 0, 1, -1, 1, 1, -1, -1]

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let w = input[0], h = input[1]
    
    if w == 0 && h == 0 { break }
    
    var graph: [[Int]] = []
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: w), count: h)
    
    var cnt = 0
    
    for _ in 0..<h {
        graph.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    
    for y in 0..<h {
        for x in 0..<w {
            if !visited[y][x] && graph[y][x] == 1 {
                visited[y][x] = true
                cnt += 1
                dfs(y, x)
            }
        }
    }
    
    func dfs(_ y: Int, _ x: Int) {
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if 0..<w ~= nx && 0..<h ~= ny {
                if !visited[ny][nx] && graph[ny][nx] == 1 {
                    visited[ny][nx] = true
                    dfs(ny, nx)
                }
            }
        }
    }
    
    print(cnt)
}