import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

// DP 배열 초기화
var dp = Array(repeating: Array(repeating: 0, count: m + 1), count: n + 1)
dp[0][0] = 1

// DP 계산
for i in 1...n {
    for j in 1...m {
        dp[i][j] = dp[i - 1][j - 1] % 1000000007            // 대각선
        dp[i][j] = (dp[i][j] + dp[i][j - 1]) % 1000000007   // 왼쪽
        dp[i][j] = (dp[i][j] + dp[i - 1][j]) % 1000000007   // 위쪽
    }
}

// 결과 출력
print(dp[n][m])