import Foundation

let n = Int(readLine()!)!

var dp: [(Int, Int)] = [(0, 1), (1, 1)]

if n == 1 {
    print(0, 1)
} else if n == 2 {
    print(1, 1)
    
} else {
    for i in 2..<n {
        dp.append((dp[i-1].1, dp[i-1].0 + dp[i-1].1))
    }
    
    print(dp.last!.0, dp.last!.1)
}