import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var package = Int.max
var unit = Int.max

var arr: [[Int]] = []

var result: Int = Int.max

for _ in 0..<m {
    let input2 = readLine()!.split(separator: " ").map{Int($0)!}
    package = min(package, input2[0])
    unit = min(unit, input2[1])
}

var p = Int.max
var u = Int.max
var pu = Int.max

if n >= 6 {
    if n % 6 == 0 {
        p = (n / 6) * package
    } else {
        p = (n / 6 + 1) * package
    }
    
} else {
    p = package
}

u = n * unit

pu = (n / 6) * package + (n % 6) * unit

print(min(p, u, pu))