import Foundation

var arr: [[String]] = Array(repeating: Array(repeating: "", count: 15), count: 5)
var result = ""

for i in 0..<5 {
    let input = Array(readLine()!)
    for j in 0..<input.count {
        arr[i][j] += String(input[j])
    }
}

for i in 0..<15 {
    for j in 0..<5 {
        if arr[j][i] == "" {
            continue
        } else {
            result += arr[j][i]
        }
    }
}
print(result)