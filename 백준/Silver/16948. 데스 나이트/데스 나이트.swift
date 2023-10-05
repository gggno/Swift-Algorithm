import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
let r1 = input[0], c1 = input[1], r2 = input[2], c2 = input[3]

let dy = [-2, -2, 0, 0, 2, 2]
let dx = [-1, 1, -2, 2, -1, 1]

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)

var queue: [(Int, Int, Int)] = [(r1, c1, 0)]
visited[r1][c1] = true
var result = -1

var index = 0
while index < queue.count {
    let pop = queue[index]
    
    if pop.0 == r2 && pop.1 == c2 {
        result = pop.2
        break
    }
    
    for i in 0..<6 {
        let nx = pop.1 + dx[i]
        let ny = pop.0 + dy[i]
        
        if 0..<n ~= nx && 0..<n ~= ny {
            if !visited[ny][nx] {
                visited[ny][nx] = true
                queue.append((ny, nx, pop.2+1))
            }
        }
    }
    
    index += 1
}

print(result)