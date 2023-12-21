import Foundation

let n = Int(readLine()!)!
var left = 1
var right = 1
var arr: [Int] = []

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

if arr.count > 1 {
    var max = arr[0]
    for i in 1..<arr.count {
        if max < arr[i] {
            left += 1
            max = arr[i]
        }
    }
    
    var max2 = arr.last!
    for i in (0..<arr.count).reversed() {
        if max2 < arr[i] {
            right += 1
            max2 = arr[i]
        }
    }
}

print(left)
print(right)