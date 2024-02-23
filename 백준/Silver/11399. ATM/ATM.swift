import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var cnt = 0
var result = 0

for i in 0..<arr.count {
    cnt += arr[i]
    result += cnt
}

print(result)