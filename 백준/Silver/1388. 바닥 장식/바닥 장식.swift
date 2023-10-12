import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var graph: [[String]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

var cnt = 0

for _ in 0..<n {
    graph.append(readLine()!.map{String($0)})
}

for y in 0..<n {
    for x in 0..<m {
        if !visited[y][x] {
            visited[y][x] = true
            cnt += 1
            
            if graph[y][x] == "-" {
                if x+1 < m {
                    for i in x+1..<m {
                        if !visited[y][i] && graph[y][i] == "-" {
                            visited[y][i] = true
                        } else {
                            break
                        }
                    }
                }
                
            } else {
                if y+1 < n {
                    for i in y+1..<n {
                        if !visited[i][x] && graph[i][x] == "|" {
                            visited[i][x] = true
                        } else {
                            break
                        }
                    }
                }
            }
        }
    }
}

print(cnt)