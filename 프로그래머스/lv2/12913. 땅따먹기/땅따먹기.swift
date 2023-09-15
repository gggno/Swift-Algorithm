import Foundation

func solution(_ land:[[Int]]) -> Int{
    var dp = land
    
    for i in 0..<dp.count-1 {
        dp[i+1][0] += max(dp[i][1], dp[i][2], dp[i][3])
        dp[i+1][1] += max(dp[i][0], dp[i][2], dp[i][3])
        dp[i+1][2] += max(dp[i][1], dp[i][0], dp[i][3])
        dp[i+1][3] += max(dp[i][1], dp[i][2], dp[i][0])
    }
    
    return dp.last!.max()!
}