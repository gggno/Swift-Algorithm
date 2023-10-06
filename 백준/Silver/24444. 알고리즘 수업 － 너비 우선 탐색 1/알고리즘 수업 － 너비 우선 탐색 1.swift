import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1], r = input[2]


var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Int] = Array(repeating: 0, count: n+1)

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
    graph[nums[1]].append(nums[0])
}

var queue: [Int] = [r]
var depth = 1

visited[r] = depth

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    for i in graph[pop].sorted() {
        if visited[i] == 0 {
            depth += 1
            visited[i] = depth
            queue.append(i)
        }
    }
    
    index += 1
}

print(visited[1...].map { String($0) }.joined(separator: "\n"))