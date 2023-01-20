import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

var dp: [Int] = Array(repeating: 0, count: n)

for i in (0..<n).reversed() {
    
    if i + input[i] + 1 < n {
        dp[i] = dp[i + input[i] + 1] + 1
    } else {
        dp[i] = 1
    }
}
for i in dp {
    print(i, terminator: " ")
}
print("")
