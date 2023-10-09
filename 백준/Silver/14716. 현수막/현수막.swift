import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0, 1, 1, -1, -1]
let dy = [0, 0, 1, -1, 1, -1, -1, 1]

var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

var result = 0

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for y in 0..<n {
    for x in 0..<m {
        if !visited[y][x] && graph[y][x] == 1 {
            result += 1
            dfs(y, x)
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    if !visited[y][x] {
        visited[y][x] = true
        
        for i in 0..<8 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if 0..<m ~= nx && 0..<n ~= ny {
                if !visited[ny][nx] && graph[ny][nx] == 1 {
                    dfs(ny, nx)
                }
            }
            
        }
    }
}

print(result)