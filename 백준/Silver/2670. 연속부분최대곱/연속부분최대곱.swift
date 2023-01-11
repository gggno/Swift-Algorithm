import Foundation

let n = Int(readLine()!)!
var dp: [Double] = []

for _ in 0..<n {
    dp.append(Double(readLine()!)!)
}

for i in 1..<n {
    if dp[i] < dp[i] * dp[i-1] {
        dp[i] *= dp[i-1]
    }
}
print(String(format: "%.3f", (dp.max()! * 1000).rounded() / 1000))
