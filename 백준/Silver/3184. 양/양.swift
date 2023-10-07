import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let r = input[0], c = input[1]

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var graph: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: c), count: r)

var vResult = 0
var oResult = 0

for _ in 0..<r {
    graph.append(readLine()!.map{String($0)})
}

for y in 0..<r {
    for x in 0..<c {
        if !visited[y][x] && graph[y][x] != "#" {
            bfs(y, x)
        }
    }
}

func bfs(_ y: Int, _ x: Int) {
    var queue: [(Int, Int)] = [(y, x)]
    visited[y][x] = true
    var vCnt = 0
    var oCnt = 0
    
    if graph[y][x] == "v" {
        vCnt += 1
    } else if graph[y][x] == "o" {
        oCnt += 1
    }
    
    var index = 0
    while index < queue.count {
        let pop = queue[index]
        
        for i in 0..<4 {
            let nx = pop.1 + dx[i]
            let ny = pop.0 + dy[i]
            
            if 0..<c ~= nx && 0..<r ~= ny {
                if !visited[ny][nx] && graph[ny][nx] != "#" {
                    visited[ny][nx] = true
                    queue.append((ny, nx))
                    
                    if graph[ny][nx] == "v" {
                        vCnt += 1
                    } else if graph[ny][nx] == "o" {
                        oCnt += 1
                    }
                }
            }
        }
        
        index += 1
    }
    
    if vCnt >= oCnt {
        vResult += vCnt
    } else if vCnt < oCnt {
        oResult += oCnt
    }
}

print(oResult, vResult)