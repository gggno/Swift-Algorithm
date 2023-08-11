import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let home = readLine()!.split(separator: " ").map{Int($0)!}
    var shop: [[Int]] = []
    for _ in 0..<n {
        shop.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    let festival = readLine()!.split(separator: " ").map{Int($0)!}
    
    var graph: [[Int]] = []
    graph.append(home)
    graph += shop
    graph.append(festival)
    
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: graph.count), count: graph.count)
    
    for i in 0..<graph.count {
        for j in 0..<graph.count {
            if abs(graph[i][0] - graph[j][0]) + abs(graph[i][1] - graph[j][1]) <= 1000 {
                visited[i][j] = true
            }
        }
    }
    
    var result: [Bool] = Array(repeating: false, count: graph.count)
    result[0] = true
    
    var stack: [Int] = [0]
    
    while !stack.isEmpty {
        let pop = stack.popLast()!
        
        for i in 0..<visited[pop].count {
            if visited[pop][i] {
                if !result[i] {
                    result[i] = true
                    stack.append(i)
                }
            }
        }
    }
    
    if result[graph.count-1] {
        print("happy")
    } else {
        print("sad")
    }
    
}