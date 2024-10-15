import Foundation

let t = Int(readLine()!)!

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var result: [Int] = Array(repeating: 0, count: t)

for i in 0..<t {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let m = input[0], n = input[1], k = input[2]
    
    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for _ in 0..<k {
        let nums = readLine()!.split(separator: " ").map{Int($0)!}
        graph[nums[1]][nums[0]] = 1
    }
    
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 1 {
                result[i] += 1
                dfs(y: y, x: x)
            }
        }
    }
    
    func dfs(y: Int, x: Int) {
        if graph[y][x] == 1 {
            graph[y][x] = 0
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if 0..<n ~= ny && 0..<m ~= nx {
                    if graph[ny][nx] == 1 {
                        dfs(y: ny, x: nx)
                    }
                }
            }
        }
    }
}

for i in result {
    print(i)
}