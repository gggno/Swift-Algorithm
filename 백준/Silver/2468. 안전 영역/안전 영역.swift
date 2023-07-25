import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n)

var dx = [1, -1, 0, 0]
var dy = [0, 0, 1, -1]
var arr: [Int] = []

for i in 0..<n {
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    graph[i] = arr
}

for i in 0...graph.flatMap{$0}.max()! {
    var cnt = 0
    var visited: [[Bool]] = Array(repeating: [], count: n)
    
    for b in 0..<n {
        visited[b] = Array(repeating: false, count: n)
    }
    
    for j in 0..<n {
        for k in 0..<n {
            if !visited[j][k] { // 방문하지 않았다면
                if graph[j][k] > i {
                    cnt += 1
                }
                dfs(j, k)
            }
        }
    }
    
    func dfs(_ y: Int, _ x: Int) {
        if !visited[y][x] && graph[y][x] > i {
            visited[y][x].toggle()
           
                for index in 0..<4 {
                    let nx = x + dx[index]
                    let ny = y + dy[index]
                    
                    if nx >= 0 && nx < n && ny >= 0 && ny < n {
                        dfs(ny, nx)
                    }
                }
            
        }
    }
    arr.append(cnt)
}
print(arr.max()!)
