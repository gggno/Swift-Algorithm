import Foundation

let n = Int(readLine()!)!

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)

for _ in 0..<n {
    graph.append(readLine()!.map{String($0)})
}

var cnt = 0
for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] {
            visited[y][x] = true
            cnt += 1
            let color = graph[y][x]
            dfs(y, x, color)
        }
    }
}

for y in 0..<n {
    for x in 0..<n {
        if graph[y][x] == "G" {
            graph[y][x] = "R"
        }
    }
}

visited = Array(repeating: Array(repeating: false, count: n), count: n)

var cnt2 = 0
for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] {
            visited[y][x] = true
            cnt2 += 1
            let color = graph[y][x]
            dfs(y, x, color)
        }
    }
}

func dfs(_ y: Int, _ x: Int, _ color: String) {
    
    for i in 0..<4 {
        let ny = dy[i] + y
        let nx = dx[i] + x
        
        if 0..<n ~= ny && 0..<n ~= nx {
            if !visited[ny][nx] && graph[ny][nx] == color {
                visited[ny][nx] = true
                dfs(ny, nx, color)
            }
        }
        
    }
}

print(cnt)
print(cnt2)