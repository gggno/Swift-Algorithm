import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)

var cnt = 0

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

func dfs(_ num: Int) {
    if !visited[num] {
        visited[num] = true
        cnt += 1
        for i in graph[num] {
            dfs(i)
        }
    }
}

dfs(1)
print(cnt-1)