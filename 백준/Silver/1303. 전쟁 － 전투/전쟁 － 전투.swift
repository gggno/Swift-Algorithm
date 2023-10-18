import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)

var cnt = 0
var result: [String: Int] = ["W": 0, "B": 0]

for _ in 0..<m {
    graph.append(readLine()!.map{String($0)})
}

for y in 0..<m {
    for x in 0..<n {
        if !visited[y][x] {
            cnt = 1
            if graph[y][x] == "W" {
                bfs(y, x, "W")
                result["W"]! += cnt * cnt
            } else if graph[y][x] == "B" {
                bfs(y, x, "B")
                result["B"]! += cnt * cnt
            }
        }
    }
}

func bfs(_ y: Int, _ x: Int, _ str: String) {
    var queue: [(Int, Int)] = [(y, x)]
    visited[y][x] = true
    
    var index = 0
    while index < queue.count {
        let pop = queue[index]
        
        for i in 0..<4 {
            let nx = pop.1 + dx[i]
            let ny = pop.0 + dy[i]
            
            if 0..<n ~= nx && 0..<m ~= ny {
                if !visited[ny][nx] && graph[ny][nx] == str {
                    visited[ny][nx] = true
                    cnt += 1
                    
                    queue.append((ny, nx))
                }
            }
        }
        
        index += 1
    }
}
print(result["W"]!, result["B"]!)