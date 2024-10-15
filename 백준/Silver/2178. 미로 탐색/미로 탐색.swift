import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
var dis: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

func bfs() {
    var queue: [(Int, Int)] = [(0, 0)]
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        if !visited[pop.0][pop.1] {
            visited[pop.0][pop.1] = true
            
            for i in 0..<4 {
                let ny = pop.0 + dy[i]
                let nx = pop.1 + dx[i]
                
                if 0..<n ~= ny && 0..<m ~= nx {
                    if !visited[ny][nx] && graph[ny][nx] == 1 {
                        queue.append((ny, nx))
                        dis[ny][nx] = dis[pop.0][pop.1] + 1
                    }
                }
                
            }
        }
    }
    
}

bfs()
print(dis[n-1][m-1]+1)