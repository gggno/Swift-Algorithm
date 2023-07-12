import Foundation

var arr: [Int] = []
var cnt = 0
var num = 0
var value = 0

for i in 1...10 {
    arr.append(Int(readLine()!)!)
}
value = abs(100 - arr[0])
num = arr[0]

for i in 0..<arr.count {
    cnt += arr[i]
    var differ = abs(100 - cnt)
    
    if value >= differ {
        value = differ
        num = cnt
    }
}

print(num)
