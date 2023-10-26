import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    
    var graph: [[Int]] = Array(repeating: [], count: n+1)
    var visited: [Int] = Array(repeating: 0, count: n+1)
    
    for i in edge {
        graph[i[0]].append(i[1])
        graph[i[1]].append(i[0])
    }
    
    var queue: [Int] = [1]
    visited[1] = 1
    
    var index = 0
    while index < queue.count {
        let pop = queue[index]
        
        for i in graph[pop] {
            if visited[i] == 0 {
                visited[i] = visited[pop] + 1
                queue.append(i)
            }
        }
        
        index += 1
    }
    
    let maxValue = visited.max()!
    let cnt = visited.filter{$0 == maxValue}.count

    return cnt
}