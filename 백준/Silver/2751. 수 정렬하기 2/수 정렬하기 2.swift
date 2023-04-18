import Foundation

let input = Int(readLine()!)!
var arr: [Int] = []

for i in 0..<input {
    arr.append(Int(readLine()!)!)
}

for i in arr.sorted() {
    print(i)
}
