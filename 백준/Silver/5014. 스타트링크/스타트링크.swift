import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let f = input[0], s = input[1], g = input[2], u = input[3], d = input[4]

var graph: [Int] = Array(repeating: 0, count: f+1)
var visited: [Int] = Array(repeating: 0, count: f+1)

var queue = [s]

var index = 0
var result = -1
visited[s] = 1
while index < queue.count {
    let pop = queue[index]
        
    if pop == g {
        result = visited[g]
        break
    }
    
    if pop + u <= f && visited[pop + u] == 0 {
        queue.append(pop + u)
        visited[pop + u] = visited[pop] + 1
    }
    
    if pop - d > 0 && visited[pop - d] == 0 {
        queue.append(pop - d)
        visited[pop - d] = visited[pop] + 1
    }
    
    index += 1
}

if result != -1 {
    print(result-1)
} else {
    print("use the stairs")
}