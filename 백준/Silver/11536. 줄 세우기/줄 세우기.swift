import Foundation

let n = Int(readLine()!)!

var arr: [String] = []

for _ in 0..<n {
    arr.append(readLine()!)
}

let up = arr.sorted(by: <)
let down = arr.sorted(by: >)

if arr == up {
    print("INCREASING")
} else if arr == down {
    print("DECREASING")
} else {
    print("NEITHER")
}