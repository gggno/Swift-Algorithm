import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let h = input[0], w = input[1]

var graph: [[Character]] = []
var visitied: [[Int]] = Array(repeating: Array(repeating: -1, count: w), count: h)

for _ in 0..<h {
    graph.append(readLine()!.map{$0})
}

for y in 0..<h {
    for x in 0..<w {
        if graph[y][x] == "c" {
            visitied[y][x] = 0
        } else if graph[y][x] == "." {
            if x == 0 {
                visitied[y][x] = -1
            } else {
                if visitied[y][x-1] == -1 {
                    visitied[y][x] = -1
                } else {
                    visitied[y][x] = visitied[y][x-1] + 1
                }
            }
        }
    }
}

for i in visitied {
    print(i.map{String($0)}.joined(separator: " "))
}