import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]
var arr: [Int] = []

for i in 1...n {
    arr.append(i)
}

for i in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var left = nums[0] - 1
    var right = nums[1] - 1
    
    while true {
        arr.swapAt(left, right)
        left += 1
        right -= 1
        
        if left >= right {
            break
        }
    }
}
for i in arr {
    print(i, terminator: " ")
}