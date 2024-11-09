import Foundation

let input = readLine()!.split(separator: ":").map{String($0)}
let n = Int(input[0])!, m = Int(input[1])!

var maxValue = 0

for i in 1...max(n, m) {
    if n % i == 0 && m % i == 0 {
        maxValue = i
    }
}

print("\(n / maxValue):\(m / maxValue)")