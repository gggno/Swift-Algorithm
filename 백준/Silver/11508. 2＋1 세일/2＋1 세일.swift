import Foundation

var n = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.sort(by: >)

var cnt = 0

for i in 0..<arr.count {
    if (i+1) % 3 != 0 {
        cnt += arr[i]
    }
}

print(cnt)