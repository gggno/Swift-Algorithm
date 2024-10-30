import Foundation

let t = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<t {
    var dp = [1, 1, 1]
    
    let n = Int(readLine()!)!
    
    if n <= 3 {
        result.append(dp[n-1])
    } else {
        for i in 3..<n {
            dp.append(dp[i-3] + dp[i-2])
        }
        result.append(dp[n-1])
    }
}

for i in result {
    print(i)
}