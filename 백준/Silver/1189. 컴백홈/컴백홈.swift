import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let r = input[0], c = input[1], k = input[2]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: c), count: r)

var result = 0

for _ in 0..<r {
    graph.append(readLine()!.map{String($0)})
}

dfs(r-1, 0, 1)

func dfs(_ y: Int, _ x: Int, _ num: Int) {
    if y == 0 && x == c-1 {
        if num == k {
            result += 1
        }
        return
    }
    
    graph[y][x] = "T"
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if 0..<c ~= nx && 0..<r ~= ny {
            if !visited[ny][nx] && graph[ny][nx] == "." {
                graph[ny][nx] = "T"
                dfs(ny, nx, num+1)
                graph[ny][nx] = "."
            }
        }
    }
    
}

print(result)