import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let m = input[0], n = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)

for _ in 0..<m {
    graph.append(readLine()!.map{Int(String($0))!})
}

for i in 0..<n {
    if !visited[m-1][i] && graph[m-1][i] == 0 {
        dfs(m-1, i)
    }
}

func dfs(_ y: Int, _ x: Int) {
    graph[y][x] = 2
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if 0..<n ~= nx && 0..<m ~= ny {
            if !visited[ny][nx] && graph[ny][nx] == 0 {
                visited[ny][nx] = true
                dfs(ny, nx)
            }
        }
    }
}

var state = "NO"

for i in graph[0] {
    if i == 2 {
        state = "YES"
        break
    }
}

print(state)