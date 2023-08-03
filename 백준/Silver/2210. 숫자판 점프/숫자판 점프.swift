import Foundation

var graph: [[Int]] = []

for _ in 0..<5 {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var answerList: Set<String> = []

func dfs(_ x: Int, _ y: Int, _ number: String) {
    var number = number
    number += String(graph[y][x])
    
    if number.count == 6 {
        answerList.insert(number)
        return
    }
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < 5 && ny >= 0 && ny < 5 {
            dfs(nx, ny, number)
        }
    }
}

for i in 0..<5 {
    for j in 0..<5 {
        dfs(i, j, "")
    }
}

print(answerList.count)