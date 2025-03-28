import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1], v = input[2]

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)
var result: [Int] = []

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
    
    graph[nums[0]].sort()
    graph[nums[1]].sort()
}

func dfs(_ num: Int) {
    visited[num] = true
    result.append(num)
    
    for i in graph[num] {
        if !visited[i] {
            dfs(i)
        }
    }
}

var queue: [Int] = [v]
func bfs(_ num: Int) {
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        if !visited[pop] {
            visited[pop] = true
            result.append(pop)
            queue += graph[pop]
        }
    }
}



dfs(v)
print(result.map{String($0)}.joined(separator: " "))

result = []
visited = Array(repeating: false, count: n+1)

bfs(v)
print(result.map{String($0)}.joined(separator: " "))