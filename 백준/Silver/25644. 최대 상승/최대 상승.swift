import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map({Int($0)!})

var benefit = 0
var result = 0

for i in (0..<input.count).reversed() {
    benefit = max(benefit, input[i])
    result = max(result, benefit - input[i])
}

print(result)
