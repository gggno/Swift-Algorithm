import Foundation

let input = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: input+1)
var visited: [Int] = Array(repeating: 0, count: input+1)

for i in 0..<input-1 {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    graph[num[0]].append(num[1])
    graph[num[1]].append(num[0])
}

func dfs(_ node: Int = 1) {
    for i in graph[node] {
        if visited[i] == 0 {
            visited[i] = node
            dfs(i)
        }
    }
}

dfs()

for i in 2...input {
    print(visited[i])
}