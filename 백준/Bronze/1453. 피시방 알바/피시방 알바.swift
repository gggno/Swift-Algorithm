import Foundation

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int($0)!}
var result = 0

for i in 0..<input.count {
    let num = input.removeFirst()
    if input.contains(num) {
        result += 1
    }
}
print(result)