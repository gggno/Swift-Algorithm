import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0]
let k = input[1]

let nums = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)

print(nums[k-1])
