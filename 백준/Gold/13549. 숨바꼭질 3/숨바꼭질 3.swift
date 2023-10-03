import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

var visited: [Bool] = Array(repeating: false, count: 100001)

var queue: [(Int, Int)] = [(n,0)]

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    if pop.0 == k {
        print(pop.1)
        break
    }
    
    if pop.0 * 2 < 100001 && !visited[pop.0 * 2] {
        visited[pop.0 * 2] = true
        queue.append((pop.0 * 2, pop.1))
    }
    
    if pop.0 - 1 >= 0 && !visited[pop.0 - 1] {
        visited[pop.0 - 1] = true
        queue.append((pop.0 - 1, pop.1 + 1))
    }
    
    if pop.0 + 1 < 100001 && !visited[pop.0 + 1] {
        visited[pop.0 + 1] = true
        queue.append((pop.0 + 1, pop.1 + 1))
    }
    
    index += 1
}