import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    if num == 0 {
        arr.removeLast()
    } else {
        arr.append(num)
    }
}

print(arr.reduce(0, +))