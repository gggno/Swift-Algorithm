import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    let str = String(repeating: " ", count: n-i) + String(repeating: "*", count: 2*i-1)
    print(str)
}

for i in (1..<n).reversed() {
    let str = String(repeating: " ", count: n-i) + String(repeating: "*", count: 2*i-1)
    print(str)
}