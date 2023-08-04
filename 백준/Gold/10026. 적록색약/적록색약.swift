import Foundation

let n = Int(readLine()!)!

var graph: [[String]] = []
var graph2: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
var visited2: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<n {
    let input = readLine()!.map{String($0)}
    graph.append(input)
    graph2.append(input)
}

for i in 0..<n {
    for j in 0..<n {
        if graph2[i][j] == "G" {
            graph2[i][j] = "R"
        }
    }
}

var cnt1 = 0
var cnt2 = 0
var color1 = ""
var color2 = ""

for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] {
            visited[y][x] = true
            cnt1 += 1
            color1 = graph[y][x]
            dfs1(x, y)
        }
    }
}

for y in 0..<n {
    for x in 0..<n {
        if !visited2[y][x] {
            visited2[y][x] = true
            cnt2 += 1
            color2 = graph2[y][x]
            dfs2(x, y)
        }
    }
}

func dfs1(_ x: Int, _ y: Int) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if !visited[ny][nx] && color1 == graph[ny][nx] {
                visited[ny][nx] = true
                dfs1(nx, ny)
            }
        }
    }
}

func dfs2(_ x: Int, _ y: Int) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if !visited2[ny][nx] && color2 == graph2[ny][nx] {
                visited2[ny][nx] = true
                dfs2(nx, ny)
            }
        }
    }
}

print(cnt1, cnt2)