import Foundation

var arr: [Int] = []
var cnt = 0

for i in 0..<5 {
    let num = Int(readLine()!)!
    cnt += num
    arr.append(num)
}

arr.sort()
print(cnt / 5)
print(arr[2])
