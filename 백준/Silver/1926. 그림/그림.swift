import Foundation

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = input[0]
let m = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var cnt = 0
var maxValue = 0
var tmpMax = 0
var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map {Int(String($0))!})
}

for y in 0..<n {
    for x in 0..<m {
        if !visited[y][x] && graph[y][x] == 1 {
            visited[y][x] = true
            cnt += 1
            tmpMax += 1
            dfs(x, y)
            if maxValue < tmpMax {
                maxValue = tmpMax
            }
            tmpMax = 0
        }
    }
}

func dfs(_ x: Int, _ y: Int) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && ny >= 0 && nx < m && ny < n {
            if graph[ny][nx] == 1 && !visited[ny][nx] {
                visited[ny][nx] = true
                tmpMax += 1
                dfs(nx, ny)
            }
        }
    }
}

print(cnt)
print(maxValue)