import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
let m = arr.max()!

var num: Double = 0

for i in arr {
    num += (Double(i) / Double(m)) * 100
}

print(num / Double(n))