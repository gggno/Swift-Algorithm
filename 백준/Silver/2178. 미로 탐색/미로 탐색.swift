import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0]
let m = input[1]

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
var distance: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
    graph[i] = readLine()!.map{Int(String($0))!}
}

var visited: [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
var queue: [[Int]] = [[0, 0]]

while !queue.isEmpty {
    let pop = queue.removeFirst()
    
    let popx = pop[1]
    let popy = pop[0]
    
    for i in 0..<4 {
        let nx = popx + dx[i]
        let ny = popy + dy[i]
        
        if nx >= 0 && ny >= 0 && nx < m &&  ny < n {
            if visited[ny][nx] == -1 && graph[ny][nx] == 1 {
                visited[ny][nx] = 1
                queue.append([ny, nx])
                distance[ny][nx] = distance[popy][popx] + 1
            }
        }
        
    }
}

print(distance[n-1][m-1]+1)
