import Foundation

let n = Int(readLine()!)!
var graph = [[Int]]()
var visited = Array(repeating: false, count: n)
var result = Array(repeating: Array(repeating: 0, count: n), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

for i in 0..<n {
    dfs(i, i)
    visited = Array(repeating: false, count: n)
}

func dfs(_ line: Int, _ now: Int) {
    for i in 0..<n {
        if graph[now][i] == 1 && !visited[i] {
            result[line][i] = 1
            visited[i] = true
            dfs(line, i)
        }
    }
}

for i in result {
    for j in i {
        print(j, terminator: " ")
    }
    print()
}