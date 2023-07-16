import Foundation

let n = Int(readLine()!)!
var num: Set<Int> = []

for i in 0..<n {
    num.insert(Int(readLine()!)!)
}

let a = num.sorted(by: <)

for i in a {
    print(i)
}