import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    
    var result = Int.max
    
    for i in 1...wires.count {
        var graph: [[Int]] = Array(repeating: [], count: n+1)
        var visited: [Bool] = Array(repeating: false, count: n+1)
        
        var allCnt: [Int] = []
        
        for (index, j) in wires.enumerated() {
            if index+1 == i {
                continue
            }
            graph[j[0]].append(j[1])
            graph[j[1]].append(j[0])
        }

        func dfs(_ num: Int) {
            if !visited[num] {
                allCnt[allCnt.count - 1] += 1
                visited[num] = true
            
                for i in graph[num] {
                    dfs(i)
                }
            }
        }
        
        for i in 1...n {
            if !visited[i] {
                allCnt.append(1)
                dfs(i)
            }
        }

        if allCnt.count == 2 {
            if result > abs(allCnt[0] - allCnt[1]) {
                result = abs(allCnt[0] - allCnt[1])
            }
        }
    }
    
    return result
}