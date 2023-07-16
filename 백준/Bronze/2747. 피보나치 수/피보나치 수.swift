import Foundation

let n = Int(readLine()!)!

var dp: [Int] = [0, 1]

if n > 1 {
    for i in 2...n {
        dp.append(dp[i-1] + dp[i-2])
    }
    print(dp[n])
} else {
    print(n)
}
