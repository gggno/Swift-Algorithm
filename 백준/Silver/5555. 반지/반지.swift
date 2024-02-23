import Foundation

let str = readLine()!
let n = Int(readLine()!)!
var cnt = 0

for _ in 0..<n {
    var input = readLine()!
    input += input
    
    if input.contains(str) {
        cnt += 1
        continue
    }
    
    if input.contains(str) {
        cnt += 1
    }
}

print(cnt)