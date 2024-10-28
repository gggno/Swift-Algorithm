import Foundation

let t = Int(readLine()!)!
var result: [String] = []

for _ in 0..<t {
    var dp = [(1, 0), (0, 1)]
    let n = Int(readLine()!)!
    
    if n == 0 {
        result.append("1 0")
    } else if n == 1 {
        result.append("0 1")
        
    } else {
        for i in 2...n {
            dp.append((dp[i-1].0 + dp[i-2].0, dp[i-1].1 + dp[i-2].1))
        }
        
        result.append("\(dp[n].0) \(dp[n].1)")
    }
}

for i in result {
    print(i)
}