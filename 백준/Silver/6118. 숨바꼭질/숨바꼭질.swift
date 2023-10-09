import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Int] = Array(repeating: 0, count: n+1)

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

var queue: [(Int, Int)] = [(1, 0)]
visited[1] = -1

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    for i in graph[pop.0] {
        if visited[i] == 0 {
            visited[i] = pop.1 + 1
            queue.append((i, pop.1 + 1))
        }
    }
    
    index += 1
}

let maxValue: Int = visited.max()!
var cnt = 0

for i in visited {
    if i == maxValue {
        cnt += 1
    }
}

for i in 1...visited.count {
    if visited[i] == maxValue {
        print(i, visited[i], cnt)
        break
    }
}
