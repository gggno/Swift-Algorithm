import Foundation

let n = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var allCnt = 0
var cntArr: [Int] = []

for i in 0..<n {
    graph[i] = readLine()!.map{Int(String($0))!}
}

for y in 0..<n {
    for x in 0..<n {
        
        if graph[y][x] == 1 {
            allCnt += 1
            cntArr.append(0)
            dfs(y, x)
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    cntArr[allCnt-1] += 1
    graph[y][x] = 0
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if graph[ny][nx] == 1 {
                dfs(ny, nx)
            }
        }
    }
}
print(allCnt)
for i in cntArr.sorted() {
    print(i)
}