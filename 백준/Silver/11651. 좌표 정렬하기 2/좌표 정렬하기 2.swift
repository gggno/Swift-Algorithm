import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = []

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

arr = arr.sorted(by: {$0[0] < $1[0]}).sorted(by: {$0[1] < $1[1]})

for i in arr {
    print(i.map{String($0)}.joined(separator: " "))
}