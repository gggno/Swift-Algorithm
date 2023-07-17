import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0]
let m = input[1]

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    for j in 0..<m {
        arr[i][j] = num[j]
    }
}

let cnt = Int(readLine()!)!

for i in 0..<cnt {
    var result = 0
    let ns = readLine()!.split(separator: " ").map{Int($0)!}
    
    for j in ns[0]...ns[2] {
        for k in ns[1]...ns[3] {
            result += arr[j-1][k-1]
        }
    }
    print(result)
}
