import Foundation

var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: 5), count: 5)
var state = true
var result = 1

for _ in 0..<5 {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for _ in 0..<5 {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    if state {
        for i in nums {
            var cnt = 0
            for y in 0..<5 {
                if graph[y].contains(i) {
                    visited[y][graph[y].firstIndex(of: i)!] = true
                }
            }
            
            for y in 0..<5 {
                if !visited[y].contains(false) {
                    cnt += 1
                }
            }
            
            for x in 0..<5 {
                var state2 = true
                for y in 0..<5 {
                    if visited[y][x] == false {
                        state2 = false
                    }
                }
                if state2 {
                    cnt += 1
                }
            }
            
            if visited[0][4] && visited[1][3] && visited[2][2] && visited[3][1] && visited[4][0] {
                cnt += 1
            }
            
            if visited[0][0] && visited[1][1] && visited[2][2] && visited[3][3] && visited[4][4] {
                cnt += 1
            }
            
            if cnt >= 3 {
                state = false
                break
            }
            
            result += 1
        }
    }
}

print(result)