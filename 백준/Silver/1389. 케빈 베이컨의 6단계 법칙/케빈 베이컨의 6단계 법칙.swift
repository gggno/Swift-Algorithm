import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]

var graph: [[Bool]] = Array(repeating: Array(repeating: false, count: n+1), count: n+1)

for _ in 0..<m {
    let edge = readLine()!.split(separator: " ").map{Int($0)!}
    graph[edge[0]][edge[1]] = true
    graph[edge[1]][edge[0]] = true
}

func bfs(_ num: Int) -> Int {
    var queue: [(Int, Int)] = [(num, 0)]
    var visited: [Bool] = Array(repeating: false, count: n+1)
    var cnt = 0

    visited[num] = true

    var index = 0
    while index < queue.count {
        let now = queue[index]
        cnt += now.1

        for i in 1..<n+1 {
            if graph[now.0][i] && !visited[i] {
                visited[i] = true
                queue.append((i, now.1 + 1))
            }
        }

        index += 1
    }
    
    return cnt
}

var result = Array(repeating: Int.max, count: n+1)

for i in 1..<n+1 {
    result[i] = bfs(i)
}

print(result.firstIndex(of: result.min()!)!)