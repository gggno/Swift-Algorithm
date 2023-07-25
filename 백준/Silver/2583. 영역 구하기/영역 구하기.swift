import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let m = input[0]
let n = input[1]
let k = input[2]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var cnt = 0
var reCnt = 0
var result: [Int] = []

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
var visited: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)

for i in 0..<k {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var reCnt = 0
    
    for j in nums[1]..<nums[3] {
        for k in nums[0]..<nums[2] {
            graph[j][k] = 1
            visited[j][k] = 1
        }
    }
}

for j in 0..<m {
    for k in 0..<n {
        if visited[j][k] == 0 {
            cnt += 1
            dfs(j, k)
            result.append(reCnt)
            reCnt = 0
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    if visited[y][x] == 0 {
        reCnt += 1
        visited[y][x] = 1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < n && ny < m {
                dfs(ny, nx)
            }
        }
    }
}

print(cnt)
for i in result.sorted() {
    print(i, terminator: " ")
}
print("")