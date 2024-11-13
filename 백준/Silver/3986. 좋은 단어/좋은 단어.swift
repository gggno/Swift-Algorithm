import Foundation

let n = Int(readLine()!)!
var cnt = 0

for _ in 0..<n {
    var stack: [Character] = []
    let str = readLine()!
    
    for s in str {
        if let last = stack.last {
            if last == s {
                stack.removeLast()
            } else {
                stack.append(s)
            }
        } else {
            stack.append(s)
        }
    }
    
    if stack.isEmpty {
        cnt += 1
    }
}

print(cnt)