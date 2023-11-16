import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)

var result = 0

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

for i in 1...n {
    if !visited[i] {
        dfs(i)
        result += 1
    }
}

func dfs(_ v: Int) {
    visited[v] = true
    
    for i in graph[v] {
        if !visited[i] {
            dfs(i)
        }
    }
}

print(result)