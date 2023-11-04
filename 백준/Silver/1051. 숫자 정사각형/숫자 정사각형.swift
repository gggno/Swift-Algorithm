import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let dx = [1, 0]
let dy = [0, -1]

var graph: [[Int]] = []

var result = 1

for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

for y in 0..<n {
    for x in 0..<m {
        
        if x+1 < m {
            for i in x+1..<m {
                if graph[y][x] == graph[y][i] {
                    if y+(i-x) < n {
                        if graph[y][x] == graph[y+(i-x)][x] && graph[y][x] == graph[y+(i-x)][i] {
                            if result < (i-x)+1 {
                                result = (i-x)+1
                            }
                        }
                    }
                }
            }
        }
    }
}

print(result*result)