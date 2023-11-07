import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

while graph.count != 1 {
    
    var arr: [[Int]] = []
    for i in 0..<graph.count where i % 2 == 0 {
        var temp: [Int] = []
        for j in 0..<graph.count where j % 2 == 0 {
            temp.append([graph[i][j], graph[i][j+1], graph[i+1][j], graph[i+1][j+1]].sorted()[2])
        }
        arr.append(temp)
    }
    graph = arr
}
print(graph[0][0])