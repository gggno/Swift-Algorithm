import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n)
var visited: [Bool] = Array(repeating: false, count: n)
var cnt = 0

for _ in 0..<Int(readLine()!)! {
    let nums = readLine()!.split(separator: " ").map{Int($0)! - 1}
    
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

func dfs(_ num: Int) {
    for i in graph[num] {
        if !visited[i] {
            cnt += 1
            visited[i] = true
            dfs(i)
        }
    }
}

visited[0] = true
dfs(0)
print(cnt)