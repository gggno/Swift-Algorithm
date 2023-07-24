import Foundation

let dx = [1, -1, 0, 0, -1, 1, -1, 1] // 상하좌우, 좌상우상좌하우하
let dy = [0, 0, 1, -1, 1, 1, -1, -1]

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    let w = input[0]
    let h = input[1]
    
    if w == 0 && h == 0 {
        break
    }
    
    var graph: [[Int]] = Array(repeating: [], count: h)
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: w), count: h)
    var count = 0
    
    for i in 0..<h {
        let num = readLine()!.split(separator: " ").map{Int($0)!}
        graph[i] = num
    }
  
    for y in 0..<h {
        for x in 0..<w {
            if !visited[y][x] && graph[y][x] == 1 {
                visited[y][x].toggle()
                dfs(x, y)
                count += 1
            }
        }
    }
    
    func dfs(_ x: Int, _ y: Int) {
        for k in 0..<8 {
            let ny = dy[k] + y
            let nx = dx[k] + x
            
            if ny >= 0 && ny < h && nx >= 0 && nx < w {
                if !visited[ny][nx] && graph[ny][nx] == 1 {
                    visited[ny][nx].toggle()
                    dfs(nx, ny)
                }
            }
        }
    }
    
    print(count)
}