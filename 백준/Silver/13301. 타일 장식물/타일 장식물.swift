import Foundation

let n = Int(readLine()!)!

var dp = [4, 6]

if n == 1 || n == 2 {
    print(dp[n-1])
    
} else {
    for i in 2..<n {
        dp.append(dp[i-1] + dp[i-2])
    }
    
    print(dp.last!)
}