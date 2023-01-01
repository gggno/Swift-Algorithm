import Foundation

let input = Int(readLine()!)!

let score = readLine()!.split(separator: " ").map {Int($0)!}

let m = score.max()!

var num: Double = 0

for i in 0..<input {
    num += (Double(score[i]) / Double(m)) * 100
}
print(num / Double(input))
