import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var arr: [[Int]] = Array(repeating: [0], count: n+1)

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    arr[nums[0]].append(nums[1])
    arr[nums[1]].append(nums[0])
    
}

for i in 1...n {
    print(arr[i].count-1)
}