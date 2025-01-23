import Foundation

let n = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: n+1)
var arr: [Int] = [0]

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

if n == 1 {
    print(arr[1])
} else if n == 2 {
    print(arr[1] + arr[2])
} else {
    dp[1] = arr[1]
    dp[2] = arr[1] + arr[2]
    
    for i in 3...n {
        dp[i] = max(dp[i - 3] + arr[i - 1] + arr[i], dp[i - 2] + arr[i], arr[i], dp[i - 1])
    }
    print(dp.last!)
}