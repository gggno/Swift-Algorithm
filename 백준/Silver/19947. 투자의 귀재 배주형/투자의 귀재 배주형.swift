import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})

let h = input[0]
let y = input[1]

var dp = Array(repeating: 0.0, count: y+1)
dp[0] = Double(h)

for i in 1...y {
    dp[i] = Double(Int(floor(dp[i-1] * 1.05)))
    if i >= 3 {
        dp[i] = max(dp[i], floor(dp[i-3]*1.2))
    }
    if i >= 5 {
        dp[i] = max(dp[i], floor(dp[i-5]*1.35))
    }
}
print(Int(dp[y]))
