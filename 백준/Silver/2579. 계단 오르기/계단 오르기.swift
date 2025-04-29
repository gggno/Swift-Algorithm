import Foundation

let n = Int(readLine()!)!
var arr = [0]

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var dp = [Int](repeating: 0, count: n+1)

if n == 1 {
    print(arr[1])
} else if n == 2 {
    print(arr[1] + arr[2])
} else {
    dp[1] = arr[1]
    dp[2] = dp[1] + arr[2]
    
    for i in 3...n {
        dp[i] = max(dp[i - 3] + arr[i - 1], dp[i - 2]) + arr[i]
    }
    
    print(dp.last!)
}