import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let m = input[0], n = input[1], k = input[2]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)

var areaCnt = 0
var cnt = 0
var result: [Int] = []

for _ in 0..<k {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let x1 = nums[0], y1 = nums[1], x2 = nums[2], y2 = nums[3]
    
    for y in y1..<y2 {
        for x in x1..<x2 {
            graph[y][x] = 1
        }
    }
}

for y in 0..<m {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] == 0 {
            visited[y][x] = true
            areaCnt += 1
            dfs(y, x)
            result.append(cnt)
            cnt = 0
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    cnt += 1
    
    for i in 0..<4 {
        let ny = dy[i] + y
        let nx = dx[i] + x
        
        if 0..<m ~= ny && 0..<n ~= nx {
            if !visited[ny][nx] && graph[ny][nx] == 0 {
                visited[ny][nx] = true
                dfs(ny, nx)
            }
        }
    }
}

print(areaCnt)
print(result.sorted().map{String($0)}.joined(separator: " "))