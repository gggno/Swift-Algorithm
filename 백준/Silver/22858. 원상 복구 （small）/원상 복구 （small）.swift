import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let k = input[1]

var s = [0] + readLine()!.split(separator: " ").map{ Int($0)! }
var d = [0] + readLine()!.split(separator: " ").map{ Int($0)! }

var p = Array(repeating: 0, count: n + 1)

for _ in 0..<k {
    for i in 1...n {
        p[d[i]] = s[i]
    }
    s = p
}

print(p[1...].map { String($0) }.joined(separator: " "))