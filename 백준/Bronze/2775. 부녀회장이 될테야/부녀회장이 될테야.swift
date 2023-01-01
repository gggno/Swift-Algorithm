import Foundation

let input = Int(readLine()!)!
var resArr: [Int] = []

for i in 0..<input {
    let floor = Int(readLine()!)!
    let room = Int(readLine()!)!
    
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: room), count: floor+1) // room = 3, floor = 2
    
    for i in 0..<room {
        dp[0][i] = i+1
    }
    
    for i in 1...floor {
        for j in 0..<room {
            for k in 0...j {
                dp[i][j] += dp[i-1][k]
            }
        }
    }
    resArr.append(dp[floor][room-1])
}

for i in resArr {
    print(i)
}
