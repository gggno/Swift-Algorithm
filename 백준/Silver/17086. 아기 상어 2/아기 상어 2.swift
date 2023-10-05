import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0, 1, 1, -1, -1]
let dy = [0, 0, 1, -1, 1, -1, -1, 1]

var maxValue = Int.min

var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == 0 {
            bfs(y, x)
        }
    }
}

func bfs(_ y: Int, _ x: Int) {
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
    var queue: [(Int, Int, Int)] = [(y, x, 0)]
    visited[y][x] = true
    
    var index = 0
    while index < queue.count {
        let pop = queue[index]
        
        for i in 0..<8 {
            let nx = pop.1 + dx[i]
            let ny = pop.0 + dy[i]
            
            if 0..<m ~= nx && 0..<n ~= ny {
                if !visited[ny][nx] && graph[ny][nx] == 0 {
                    visited[ny][nx] = true
                    queue.append((ny, nx, pop.2 + 1))
                    
                } else if !visited[ny][nx] && graph[ny][nx] == 1 {
                    if maxValue < pop.2+1 {maxValue = pop.2+1}
                    queue.removeAll()
                    break
                }
            }
        }
        
        index += 1
    }
    
}

print(maxValue)