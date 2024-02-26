import Foundation

var n = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var cnt = 0

if n > 0 {
    for i in (1..<n).reversed() {
        if arr[i-1] >= arr[i] {
            cnt += (arr[i-1] - arr[i]) + 1
            arr[i-1] -= (arr[i-1] - arr[i]) + 1
        }
    }
}
print(cnt)