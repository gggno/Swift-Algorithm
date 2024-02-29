import Foundation

let t = Int(readLine()!)!

var arr: [Int] = []

for _ in 0..<t {
    let num = Int(readLine()!)!
    var dp = Array(repeating: 0, count: num+1)
    
    if num == 1 {
        print(1)
    } else if num == 2 {
        print(2)
    } else if num == 3 {
        print(4)
    } else {
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        
        for i in 4..<num+1 {
            dp[i] = dp[i-3] + dp[i-2] + dp[i-1]
        }
        
        print(dp[num])
    }
}