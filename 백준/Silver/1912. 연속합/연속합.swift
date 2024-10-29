import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var dp = [arr[0]]

for i in 1..<n {
    dp.append(max(arr[i], dp[i-1] + arr[i]))
}

print(dp.max()!)