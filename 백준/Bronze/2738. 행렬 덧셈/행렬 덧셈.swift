import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var a: [[Int]] = []
for _ in 0..<n {
    a.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var b: [[Int]] = []
for _ in 0..<n {
    b.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for i in 0..<n {
    for j in 0..<m {
        print(a[i][j] + b[i][j], terminator: " ")
    }
    print()
}