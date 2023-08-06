import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let m = input[0], n = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var queue: [[Int]] = []

for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 1 {
            queue.append([i, j])
        }
    }
}

var index = 0
var result = 1

while index != queue.count {
    let pop = queue[index]
    index += 1
    
    for i in 0..<4 {
        let nx = pop[1] + dx[i]
        let ny = pop[0] + dy[i]
        
        if nx >= 0 && nx < m && ny >= 0 && ny < n && graph[ny][nx] == 0 {
            graph[ny][nx] = graph[pop[0]][pop[1]] + 1
            queue.append([ny, nx])
            
            if result < graph[pop[0]][pop[1]] + 1 {
                result = graph[pop[0]][pop[1]] + 1
            }
        }
    }
}

for i in 0..<n {
    if graph[i].contains(0) {
        result = 0
        break
    }
}

print(result-1)