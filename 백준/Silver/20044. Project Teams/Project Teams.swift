import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map {Int($0)!}.sorted()

var minValue = Int.max

for i in 0..<arr.count/2 {
    minValue = min(minValue, arr[i] + arr[arr.count - i - 1])
}

print(minValue)