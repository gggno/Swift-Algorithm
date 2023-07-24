import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0]
let m = input[1]

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)
var cnt = 0

for _ in 0..<m {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    graph[num[0]].append(num[1])
    graph[num[1]].append(num[0])
}

for i in 1...n {
    if !visited[i] {
        cnt += 1
        dfs(i)
    }
}

func dfs(_ node: Int) {
    visited[node].toggle()
    for i in 0..<graph[node].count {
        let nextNode = graph[node][i]
        
        if !visited[nextNode] {
            dfs(nextNode)
        }
    }
    
}
print(cnt)