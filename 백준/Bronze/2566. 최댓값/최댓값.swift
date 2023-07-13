import Foundation

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
var max = -1
var x = 0
var y = 0

for i in 0..<9 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    for j in 0..<9 {
        arr[i][j] = input[j]
    }
}

for i in 0..<9 {
    for j in 0..<9 {
        if max < arr[i][j] {
            max = arr[i][j]
            x = i+1
            y = j+1
        }
    }
}

print(max)
print(x, y)
