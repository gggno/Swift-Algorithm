import Foundation

let num = Int(readLine()!)!

var arr: [Int] = []
var cnt = 0

for i in 0..<num {
    arr.append(Int(readLine()!)!)
}

var da = arr[0]
arr.remove(at: 0)

if !arr.isEmpty {
    while true {
        arr.sort(by: >)
        
        if da > arr[0] {
            break
        } else {
            da += 1
            arr[0] -= 1
            cnt += 1
        }
    }
}
print(cnt)