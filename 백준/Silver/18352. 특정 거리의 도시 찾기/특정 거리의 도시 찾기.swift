import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1], k = input[2], x = input[3]

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)

var queue: [(Int, Int)] = [(x, 0)]

var result: [Int] = []

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    graph[nums[0]].append(nums[1])
}

func bfs(_ num: Int, _ cnt: Int) {
    var index = 0
    while index < queue.count {
        let pop = queue[index]
        
        if !visited[pop.0] {
            visited[pop.0] = true
            
            if pop.1 > k {
                break
            }
            
            if pop.1 == k {
                result.append(pop.0)
            }
            
            for i in graph[pop.0] {
                queue.append((i, pop.1+1))
            }
        }
        
        index += 1
    }
}

bfs(x, 0)

if result.isEmpty {
    print(-1)
} else {
    for i in result.sorted() {
        print(i)
    }
}