import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]    // 정점의 개수
let m = input[1]    // 간선의 개수
let v = input[2]    // 탐색을 시작할 정점의 번호

var graph: [Int:[Int]] = [:]
var visited: Set<Int> = []
var stack: [Int] = [v]
var result1: [Int] = []

var queue: [Int] = [v]
var result2: [Int] = []

for i in 1...n {
    graph[i] = []
}

for i in 0..<m {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    graph[num[0]]?.append(num[1])
    graph[num[1]]?.append(num[0])
}

while !stack.isEmpty { // DFS
    let vertex = stack.removeLast()
    
    if !visited.contains(vertex) {
        visited.insert(vertex)
        stack += graph[vertex]!.sorted(by: >)
        result1.append(vertex)
    }
    
}
for i in result1 {
    print(i, terminator: " ")
}
print("")
visited.removeAll()

while !queue.isEmpty {
    let vertex = queue.removeFirst()
    
    if !visited.contains(vertex) {
        visited.insert(vertex)
        result2.append(vertex)
        queue += graph[vertex]!.sorted(by: <)
    }
}

for i in result2 {
    print(i, terminator: " ")
}
print("")