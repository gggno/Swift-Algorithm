import Foundation

let x = Int(readLine()!)!
let n = Int(readLine()!)!

var result = 0

for _ in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    result += nums[0] * nums[1]
}

print(result == x ? "Yes" : "No")