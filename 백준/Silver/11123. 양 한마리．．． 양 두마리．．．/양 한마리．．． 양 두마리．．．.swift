import Foundation

let t = Int(readLine()!)!
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let h = input[0], w = input[1]

    var graph: [[String]] = []
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: w), count: h)
    var cnt = 0
    
    for _ in 0..<h {
        graph.append(readLine()!.map{String($0)})
    }
    
    for i in 0..<h {
        for j in 0..<w {
            if graph[i][j] == "#" && !visited[i][j] {
                cnt += 1
                dfs(i, j)
            }
        }
    }
    print(cnt)
    func dfs(_ y: Int, _ x: Int) {
        if graph[y][x] == "#" && !visited[y][x] {
            visited[y][x] = true
            
            for k in 0..<4 {
                let nx = x + dx[k]
                let ny = y + dy[k]
                
                if 0..<w ~= nx && 0..<h ~= ny {
                    if graph[ny][nx] == "#" && !visited[ny][nx] {
                        dfs(ny, nx)
                    }
                }
                
            }
        }
    }
}