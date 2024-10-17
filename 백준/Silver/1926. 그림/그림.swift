import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var cnt = 0
var tempCnt = 0
var maxCnt = 0

for y in 0..<n {
    for x in 0..<m {
        if !visited[y][x] && graph[y][x] == 1 {
            visited[y][x] = true
            cnt += 1
            tempCnt = 0
            
            dfs(y, x)
            maxCnt = max(maxCnt, tempCnt)
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    tempCnt += 1
    for i in 0..<4 {
        let nx = dx[i] + x
        let ny = dy[i] + y
        
        if 0..<n ~= ny && 0..<m ~= nx {
            if !visited[ny][nx] && graph[ny][nx] == 1 {
                visited[ny][nx] = true
                dfs(ny, nx)
            }
        }
    }
}

print(cnt)
print(maxCnt)