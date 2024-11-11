import Foundation

let n = Int(readLine()!)!
var sum = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let c = input[0], k = input[1]
    
    sum += c * k
}

print(sum)