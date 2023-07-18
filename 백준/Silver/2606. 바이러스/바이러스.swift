import Foundation

var n = Int(readLine()!)!
let cnt = Int(readLine()!)!
var graph: [Int:[Int]] = [:]
var visited: Set<Int> = []
var stack: [Int] = [1]
    
for i in 1...n {
    graph[i] = []
}

for i in 0..<cnt {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    graph[input[1]]?.append(input[0])
    graph[input[0]]?.append(input[1])
}

while !stack.isEmpty {
    
    let vertex = stack.popLast()!
    
    if !visited.contains(vertex) {
        visited.insert(vertex)
        
        stack += graph[vertex]!
    }
}
print(visited.count-1)
