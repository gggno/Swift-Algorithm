import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], m = input[1], v = input[2]

var graph: [[Int]] = Array(repeating: [], count: n+1)

var visited1: [Bool] = Array(repeating: false, count: n+1)
var visited2: [Bool] = Array(repeating: false, count: n+1)

var result1: [Int] = []
var result2: [Int] = []

for _ in 0..<m {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    graph[num[0]].append(num[1])
    graph[num[1]].append(num[0])
    graph[num[0]].sort()
    graph[num[1]].sort()
}

func dfs(_ v: Int) {
    if !visited1[v] {
        visited1[v] = true
        
        result1.append(v)
        
        for i in graph[v] {
            dfs(i)
        }
    }
}

dfs(v)
print(result1.map{String($0)}.joined(separator: " "))

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
}

bfs(v)
print(result2.map{String($0)}.joined(separator: " "))