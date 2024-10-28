import Foundation

let n = Int(readLine()!)!
var dp: [Int] = [1, 2]

if n == 1 {
    print(1)
} else if n == 2 {
    print(2)
} else {
    for i in 2..<n {
        dp.append(dp[i-1] + dp[i-2])
        dp[i] %= 15746
    }
    
    print(dp.last!)
}