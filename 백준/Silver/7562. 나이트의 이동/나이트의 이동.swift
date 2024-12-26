import Foundation

let t = Int(readLine()!)!

let dx = [1,  2,   2,  1,  -1,  -2,  -2,  -1]
let dy = [2,  1,  -1,  -2, -2,  -1,   1,   2]

var result: [Int] = []

for _ in 0..<t {
    let l = Int(readLine()!)!
    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: l), count: l)
    let start: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    let end: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    
    var queue: [(Int, Int)] = [(start[0], start[1])]
    
    var index = 0
    while index < queue.count {
        let pop = queue[index]
        
        if (pop.0, pop.1) == (end[0], end[1]) {
            result.append(graph[pop.0][pop.1])
            break
        }
        
        for i in 0..<8 {
            let ny = pop.0 + dy[i]
            let nx = pop.1 + dx[i]
            
            if 0..<l ~= nx && 0..<l ~= ny {
                if graph[ny][nx] == 0 {
                    queue.append((ny, nx))
                    graph[ny][nx] = graph[pop.0][pop.1] + 1
                }
            }
        }
        
        index += 1
    }
}

for i in result {
    print(i)
}