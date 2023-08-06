import Foundation

let t = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<t {
    let l = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map{Int($0)!}
    let end = readLine()!.split(separator: " ").map{Int($0)!}
    
    let dx = [-2,   -1,     1,      2,       2,      1,     -1,    -2]
    let dy = [1,    2,      2,      1,      -1,     -2,     -2,    -1]
    
    var graph = Array(repeating: Array(repeating: 0, count: l), count: l)
    var visited = Array(repeating: Array(repeating: false, count: l), count: l)
    graph[end[0]][end[1]] = 0
    
    var queue = [[start[0], start[1]]]
    var cnt = 0
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        if pop == end {
            result.append(graph[pop[0]][pop[1]])
            continue
        }
        
        for i in 0..<dx.count {
            let nx = pop[1] + dx[i]
            let ny = pop[0] + dy[i]
            
            if nx >= 0 && nx < l && ny >= 0 && ny < l {
                if !visited[ny][nx] {
                    visited[ny][nx] = true
                    graph[ny][nx] = graph[pop[0]][pop[1]] + 1
                    queue.append([ny, nx])
                }
            }
        }
    }
}

for i in result {
    print(i)
}