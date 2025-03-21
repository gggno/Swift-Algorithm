import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var sum = Array(repeating: 0, count: n+1)
var result: [Int] = []

for i in 1..<n+1 {
    sum[i] = sum[i-1] + arr[i-1]
}

for _ in 0..<Int(readLine()!)! {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let f = nums[0], b = nums[1]
    result.append(sum[b] - sum[f-1])
}

for i in result {
    print(i)
}