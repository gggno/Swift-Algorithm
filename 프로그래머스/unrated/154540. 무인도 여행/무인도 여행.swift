import Foundation

func solution(_ maps:[String]) -> [Int] {
    var graph: [[Character]] = []
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: maps[0].count), count: maps.count)
    var sum = 0
    var result: [Int] = []
    
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, 1, -1]

    for i in 0..<maps.count {
        graph.append(Array(maps[i]))
    }
    
    func dfs(_ y: Int, _ x: Int) {
        if visited[y][x] == false {
            visited[y][x] = true
            
            if graph[y][x] != "X" {
                sum += Int(String(graph[y][x]))!
                for i in 0..<4 {
                    let nx = x + dx[i]
                    let ny = y + dy[i]
                    if nx >= 0 && nx < maps[0].count && ny >= 0 && ny < maps.count {
                        dfs(ny, nx)
                    }
                }
            }
        }
    }
    
    
    for y in 0..<maps.count {
        for x in 0..<maps[0].count {
            dfs(y, x)
            if sum != 0 { result.append(sum) }
            sum = 0
        }
    }
    
    if result == [] {
        return [-1]
    } else {
        return result.sorted()
    }
}