import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1], v = input[2]

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)
var visited2: [Bool] = Array(repeating: false, count: n+1)

var result1: [Int] = []
var result2: [Int] = []

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
    graph[nums[0]].sort()
    graph[nums[1]].sort()
}

func dfs(_ v: Int) {
    if !visited[v] {
        visited[v] = true
        
        result1.append(v)
        
        for i in graph[v] {
            dfs(i)
        }
    }
}

var queue: [Int] = [v]

func bfs(_ v: Int) {
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        if !visited2[pop] {
            visited2[pop] = true
            
            result2.append(pop)
            queue += graph[pop]
        }
    }
    
    print(result2.map{String($0)}.joined(separator: " "))
}

dfs(v)
print(result1.map{String($0)}.joined(separator: " "))
bfs(v)
