import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let c = input[0], r = input[1]
let result = Int(readLine()!)!

let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

var x = 0
var y = -1
var i = 0
var cnt = 0

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)

if result > c*r {
    print(0)
} else {
    var index = 1
    while index <= c*r {
        var nx = x + dx[i]
        var ny = y + dy[i]
        
        if !(0..<c ~= nx && 0..<r ~= ny && graph[ny][nx] == 0) {
            i = (i + 1) % 4
            nx = x + dx[i]
            ny = y + dy[i]
        }
        
        graph[ny][nx] = index
        
        if index == result {
            print(nx + 1, ny + 1)
            break
        }
        
        index += 1
        x = nx
        y = ny
    }
}