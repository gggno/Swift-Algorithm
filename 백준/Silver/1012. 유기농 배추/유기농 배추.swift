import Foundation

let t = Int(readLine()!)!
var arr: [[Int]] = []

let dx: [Int] = [0, 0, -1, 1]
let dy: [Int] = [-1, 1, 0, 0]

var m = 0
var n = 0
var k = 0

for _ in 0..<t {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    m = num[0]
    n = num[1]
    k = num[2]
    arr = Array(repeating: Array(repeating: 7, count: m), count: n)
    var result = 0
    
    for _ in 0..<k {
        let coor = readLine()!.split(separator: " ").map{Int($0)!}
        arr[coor[1]][coor[0]] = 1
    }
    
    for y in 0..<n {
        for x in 0..<m {
            if arr[y][x] == 1 {
                dfs(y, x)
                result += 1
            }
        }
    }
    print(result)
}

func dfs(_ y: Int, _ x: Int) {
    arr[y][x] = 0
    
    for index in 0..<4 {
        let nextX = x + dx[index]
        let nextY = y + dy[index]
        
        if nextX >= 0 && nextX < m && nextY >= 0 && nextY < n {
            if arr[nextY][nextX] == 1 {
                dfs(nextY, nextX)
            }
        }
    }
}
