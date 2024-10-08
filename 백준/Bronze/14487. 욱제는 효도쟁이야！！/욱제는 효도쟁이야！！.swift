import Foundation

var n = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum: Int = arr.reduce(0, +)

print(sum - arr.max()!)