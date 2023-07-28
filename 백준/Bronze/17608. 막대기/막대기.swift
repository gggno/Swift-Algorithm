import Foundation

let n = Int(readLine()!)!
var arr: [Int] = Array(repeating: 0, count: n)

for i in (0..<n).reversed() {
    arr[i] = Int(readLine()!)!
}

var max = arr[0]
var cnt = 1
for i in arr {
    if max < i {
        max = i
        cnt += 1
    }
}
print(cnt)