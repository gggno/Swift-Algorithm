import Foundation

let n = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Int] = Array(repeating: 0, count: n+1)

var dic: [Int: Int] = [:]

for _ in 0..<n-1 {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

func dfs(_ num: Int) {
    for i in graph[num] {
        if visited[i] == 0 {
            visited[i] = num
            dfs(i)
        }
    }
}

dfs(1)

for i in 2...n {
    print(visited[i])
}