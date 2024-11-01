import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var arr = [0] + readLine()!.split(separator: " ").map{Int($0)!}

for i in 1...n {
    arr[i] += arr[i-1]
}

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let start = nums[0], end = nums[1]
    
    print(arr[end] - arr[start - 1])
}