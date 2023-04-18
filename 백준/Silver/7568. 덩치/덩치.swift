import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 2), count: n)
var rankArr = Array(repeating: 1, count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][0] < arr[j][0] && arr[i][1] < arr[j][1] {
            rankArr[i] += 1
        }
    }
}

for i in rankArr {
    print(i, terminator: " ")
}
