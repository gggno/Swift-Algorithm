import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var a = input[0], b = input[1]
let n = Int(readLine()!)!
var star: [Int] = []

for _ in 0..<n {
    star.append(Int(readLine()!)!)
}

var cnt = 0

var min = Int.max
for i in 0..<n {
    if min > abs(star[i]-b) {
        min = abs(star[i]-b)
    }
}

if abs(a-b) > min {
    print(1+min)
} else {
    print(abs(a-b))
}