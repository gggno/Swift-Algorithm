import Foundation

let n = Double(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Double($0)!}.sorted(by: >)

while arr.count > 1 {
    let pop = arr.removeLast()
    arr[0] += pop/2
}

print(arr[0])