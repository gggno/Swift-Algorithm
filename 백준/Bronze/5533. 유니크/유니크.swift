import Foundation

let n = Int(readLine()!)!

var arr: [[Int]] = []
var result: [Int] = []

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for i in 0..<n {
    result.append(0)
    for j in 0..<3 {    // 열
        var state = true
        
        for k in 0..<n {    // 행
            if i != k && state {
                if arr[i][j] == arr[k][j] {
                    state = false
                    break
                }
            }
        }
        if state {
            result[result.count-1] += arr[i][j]
        }
    }
}

for i in result {
    print(i)
}