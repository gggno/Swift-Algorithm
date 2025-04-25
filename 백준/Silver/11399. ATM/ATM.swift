import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var dp: [Int] = Array(repeating: 0, count: n)

dp[0] = arr[0]
for i in 1..<n {
    dp[i] = dp[i-1] + arr[i]
}

print(dp.reduce(0, +))