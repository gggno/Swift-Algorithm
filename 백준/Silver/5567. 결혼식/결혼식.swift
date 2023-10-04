import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

var queue: [(Int, Int)] = [(1, 0)]
visited[1] = true

var cnt = 0

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    if pop.1 > 1 {
        break
    }
    
    for i in graph[pop.0] {
        if !visited[i] {
            cnt += 1
            visited[i] = true
            queue.append((i, pop.1+1))
        }
    }
    
    index += 1
}

print(cnt)