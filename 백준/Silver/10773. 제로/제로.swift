import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []

for i in 0..<n {
    let input = Int(readLine()!)!
    
    if input == 0 {
        arr.popLast()
    } else {
        arr.append(input)
    }
}

if arr.isEmpty {
    print(0)
} else {
    print(arr.reduce(0) {$0 + $1})
}