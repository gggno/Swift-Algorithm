import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let m = input[0], n = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = Array(repeating: [], count: n)

for i in 0..<n {
    graph[i] = readLine()!.split(separator: " ").map{Int($0)!}
}

var queue: [(Int, Int)] = []
var cnt = 1

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == 1 {
            queue.append((y, x))
        }
    }
}

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    for i in 0..<4 {
        let ny = pop.0 + dy[i]
        let nx = pop.1 + dx[i]
        
        if 0..<n ~= ny && 0..<m ~= nx && graph[ny][nx] == 0 {
            graph[ny][nx] = graph[pop.0][pop.1] + 1
            queue.append((ny, nx))
            
            cnt = max(cnt, graph[pop.0][pop.1] + 1)
        }
    }
    
    index += 1
}

for i in 0..<n {
    if graph[i].contains(0) {
        cnt = 0
        break
    }
}

print(cnt-1)