import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1], k = input[2]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m+1), count: n+1)
var cnt = 0
var maxValue = Int.min

for _ in 0..<k {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]][nums[1]] = 1
}

for y in 1...n {
    for x in 1...m {
        if !visited[y][x] && graph[y][x] == 1 {
            cnt = 0
            dfs(y, x)
            
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    visited[y][x] = true
    cnt += 1
    if maxValue < cnt {maxValue = cnt}
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if 1...m ~= nx && 1...n ~= ny && !visited[ny][nx] && graph[ny][nx] == 1 {
            dfs(ny, nx)
        }
    }
}

print(maxValue)