import Foundation

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 110), count: 110)

for i in 0..<4 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    for j in input[0]..<input[2] {
        for k in input[1]..<input[3] {
            arr[k][j] = 1
        }
    }
}
var cnt = 0
for i in 0..<110 {
    for j in 0..<110 {
        if arr[i][j] == 1 {
            cnt += 1
        }
    }
}
print(cnt)
