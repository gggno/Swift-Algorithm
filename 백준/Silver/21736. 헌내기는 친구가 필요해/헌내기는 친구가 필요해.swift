import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

var queue: [(Int, Int)] = []
var result = 0

for _ in 0..<n {
    graph.append(readLine()!.map{String($0)})
}

for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == "I" {
            queue.append((i, j))
            visited[i][j] = true
        }
    }
}

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    if graph[pop.0][pop.1] == "P" {result += 1}
    
    for i in 0..<4 {
        let nx = pop.1 + dx[i]
        let ny = pop.0 + dy[i]
        
        if 0..<m ~= nx && 0..<n ~= ny {
            if !visited[ny][nx] && graph[ny][nx] != "X" {
                visited[ny][nx] = true
                queue.append((ny, nx))
            }
        }
        
    }
    
    index += 1
}

if result == 0 {
    print("TT")
} else {
    print(result)
}