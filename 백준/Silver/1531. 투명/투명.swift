import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 101), count: 101)

for _ in 0..<n {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    let y1 = num[0], x1 = num[1], y2 = num[2], x2 = num[3]
    for i in y1...y2 {
        for j in x1...x2 {
            graph[i][j] += 1
        }
    }
}

var result = 0
for i in 1...100 {
    for j in 1...100 {
        if graph[i][j] > m {
            result += 1
        }
    }
}

print(result)