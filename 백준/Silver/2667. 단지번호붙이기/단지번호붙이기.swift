import Foundation

let n = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)

let dy = [1, -1, 0, 0]
let dx = [0, 0, 1, -1]

var apartCnt = 0
var numCnt: [Int] = []

for i in 0..<n {
    let num = readLine()!.map{Int(String($0))!}
    graph[i] = num
}

for y in 0..<n {
    for x in 0..<n {
        
        if graph[y][x] == 1 {
            apartCnt += 1
            numCnt.append(0)
            dfs(y, x)
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    numCnt[apartCnt-1] += 1
    graph[y][x] = 0
    
    for i in 0..<4 {
        let nextY = y + dy[i]
        let nextX = x + dx[i]
        
        if nextY >= 0 && nextX >= 0 && nextY < n && nextX < n {
            if graph[nextY][nextX] == 1 {
                dfs(nextY, nextX)
            }
        }
    }
}

print(apartCnt)
for i in numCnt.sorted() {
    print(i)
}
