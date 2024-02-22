import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let w = input[0], h = input[1]
let n = Int(readLine()!)!

var width = [0, w]
var height = [0, h]

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let a = line[0], b = line[1]

    if a == 0 {
        height.append(b)
    } else if a == 1 {
        width.append(b)
    }
}

width.sort()
height.sort()

var result = 0

for i in 0..<width.count - 1 {
    for j in 0..<height.count - 1 {
        let x = width[i + 1] - width[i]
        let y = height[j + 1] - height[j]
        
        result = max(result, x * y)
    }
}

print(result)