import Foundation

let n = Int(readLine()!)!

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)

var cnt = 0
var result: [Int] = []

for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] == 1 {
            cnt += 1
            result.append(0)
            dfs(y, x)
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    if !visited[y][x] {
        visited[y][x] = true
        result[cnt-1] += 1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if 0..<n ~= nx && 0..<n ~= ny {
                if !visited[ny][nx] && graph[ny][nx] != 0 {
                    dfs(ny, nx)
                }
            }
        }
    }
}

print(cnt)
for i in result.sorted() {
    print(i)
}