import Foundation

var nums = 0
var arr: [Int] = []
var state = true

for i in 0..<9 {
    arr.append(Int(readLine()!)!)
    nums += arr.last!
}
let differ = nums - 100

for i in 0..<8 {
    for j in i+1..<9 {
        if (arr[i] + arr[j]) == differ {
            arr.remove(at: j)
            arr.remove(at: i)
            state = false
            break
        }
    }
    if state == false {
        break
    }
}

for i in arr {
    print(i)
}
