import Foundation

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: 3)
var x = 0
var y = 0

for i in 0..<3 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    arr[i][0] = input[0]
    arr[i][1] = input[1]
}

if arr[0][0] == arr[1][0] {
    x = arr[2][0]
} else if arr[1][0] == arr[2][0] {
    x = arr[0][0]
} else if arr[0][0] == arr[2][0] {
    x = arr[1][0]
}

if arr[0][1] == arr[1][1] {
    y = arr[2][1]
} else if arr[1][1] == arr[2][1] {
    y = arr[0][1]
} else if arr[0][1] == arr[2][1] {
    y = arr[1][1]
}
print(x, y)