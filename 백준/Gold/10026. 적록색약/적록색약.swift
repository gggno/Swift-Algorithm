import Foundation

let n = Int(readLine()!)!

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[String]] = []
var graph2: [[String]] = []

var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
var visited2: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)

for _ in 0..<n {
    let str = readLine()!.map{String($0)}
    graph.append(str)
    graph2.append(str)
}

for y in 0..<n {
    for x in 0..<n {
        if graph2[y][x] == "G" {
            graph2[y][x] = "R"
        }
    }
}

var cnt = 0
var cnt2 = 0
var color = ""
var color2 = ""

// 적록색맹이 아닌 사람
for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] {
            visited[y][x] = true
            cnt += 1
            color = graph[y][x]
            dfs(y, x)
        }
    }
}

// 적록색맹인 사람
for y in 0..<n {
    for x in 0..<n {
        if !visited2[y][x] {
            visited2[y][x] = true
            cnt2 += 1
            color2 = graph2[y][x]
            dfs2(y, x)
        }
    }
}

// 적록색맹이 아닌 사람
func dfs(_ y: Int, _ x: Int) {
    for i in 0..<4 {
        let ny = dy[i] + y
        let nx = dx[i] + x
        
        if 0..<n ~= nx && 0..<n ~= ny {
            if !visited[ny][nx] && graph[ny][nx] == color {
                visited[ny][nx] = true
                dfs(ny, nx)
            }
        }
    }
}

// 적록색맹인 사람
func dfs2(_ y: Int, _ x: Int) {
    for i in 0..<4 {
        let nx = dx[i] + x
        let ny = dy[i] + y
        
        if 0..<n ~= nx && 0..<n ~= ny {
            if !visited2[ny][nx] && graph2[ny][nx] == color2 {
                visited2[ny][nx] = true
                dfs2(ny, nx)
            }
        }
        
    }
}

print(cnt, cnt2)