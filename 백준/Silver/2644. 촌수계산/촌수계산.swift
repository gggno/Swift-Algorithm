import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
let start = input[0], finished = input[1]
let m = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}
var result = -1

dfs(start, 0)

func dfs(_ start: Int, _ sum: Int) {
    for i in graph[start] {
        if start == finished {
            result = sum
            return
        }
        
        if !visited[i] {
            visited[i] = true
            dfs(i, sum+1)
        }
    }
}
print(result)