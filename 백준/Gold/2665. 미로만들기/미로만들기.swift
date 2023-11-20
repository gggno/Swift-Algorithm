import Foundation

let n = Int(readLine()!)!
var graph: [[Int]] = []
var visited: [[Int]] = Array(repeating: Array(repeating: 99999, count: n), count: n)
visited[0][0] = 0

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

var queue: [(Int, Int)] = [(0, 0)]

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    for i in 0..<4 {
        let nx = pop.1 + dx[i]
        let ny = pop.0 + dy[i]
        
        if 0..<n ~= nx && 0..<n ~= ny {
            
            if graph[ny][nx] == 1 {
                if visited[ny][nx] > visited[pop.0][pop.1] {
                    visited[ny][nx] = visited[pop.0][pop.1]
                    queue.append((ny, nx))
                }
            } else {
                if visited[ny][nx] > visited[pop.0][pop.1] + 1 {
                    visited[ny][nx] = visited[pop.0][pop.1] + 1
                    queue.append((ny, nx))
                }
            }
        }
    }
    
    index += 1
}

print(visited[n-1][n-1])