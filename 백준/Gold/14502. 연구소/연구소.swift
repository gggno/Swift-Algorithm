import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = []
var maxValue = 0

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

func dfs(_ depth: Int) {
    if depth == 3 {
        bfs()
        return
    }
    
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 0 {
                graph[y][x] = 1
                dfs(depth + 1)
                graph[y][x] = 0
            }
        }
    }
}

func bfs() {
    var temp = graph
    var queue: [(Int, Int)] = []
    
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 2 {
                queue.append((y, x))
            }
        }
    }
    
    var index = 0
    while index < queue.count {
        let popx = queue[index].1, popy = queue[index].0
        
        for i in 0..<4 {
            let nx = popx + dx[i]
            let ny = popy + dy[i]
            
            if nx >= 0 && nx < m && ny >= 0 && ny < n {
                if temp[ny][nx] == 0 {
                    temp[ny][nx] = 2
                    queue.append((ny, nx))
                }
            }
        }
        
        index += 1
    }
    
    var cnt = 0
    for y in 0..<n {
        for x in 0..<m {
            if temp[y][x] == 0 {
                cnt += 1
            }
        }
    }
    
    maxValue = max(maxValue, cnt)
}

dfs(0)

print(maxValue)