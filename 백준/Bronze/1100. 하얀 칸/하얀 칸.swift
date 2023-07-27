import Foundation

var arr: [[String]] = Array(repeating: [], count: 8)
var cnt = 0

for i in 0..<8 {
    arr[i] = readLine()!.map{String($0)}
}

for i in 0..<8 {
    for j in 0..<8 {
        if i % 2 == 0 && j % 2 == 0 {
            if arr[i][j] == "F" {
                cnt += 1
            }
        } else if i % 2 != 0 && j % 2 != 0 {
            if arr[i][j] == "F" {
                cnt += 1
            }
        }
    }
}
print(cnt)