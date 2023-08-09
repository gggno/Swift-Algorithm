import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

var queue: [Int] = [n]
var graph: [Int] = Array(repeating: 0, count: 100001)
var visited: [Bool] = Array(repeating: false, count: 100001)

while !queue.isEmpty {
    let pop = queue.removeFirst()
    
    if pop == k {
        break
    }
    
    if pop > 0 && !visited[pop - 1] {
        queue.append(pop - 1)
        visited[pop - 1] = true
        graph[pop - 1] = graph[pop] + 1
    }
    if pop < 100000 && !visited[pop + 1] {
        queue.append(pop + 1)
        visited[pop + 1] = true
        graph[pop + 1] = graph[pop] + 1
    }
    if pop * 2 < 100001 && !visited[2 * pop] {
        queue.append(2 * pop)
        visited[2 * pop] = true
        graph[pop * 2] = graph[pop] + 1
    }
}

print(graph[k])