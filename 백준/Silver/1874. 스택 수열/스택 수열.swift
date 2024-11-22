import Foundation

let n = Int(readLine()!)!

var cnt = 1
var stack: [Int] = []
var answer: [String] = []

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    while cnt <= num {
        stack.append(cnt)
        answer.append("+")
        cnt += 1
    }
    
    if stack.last == num {
        stack.popLast()
        answer.append("-")
    } else {
        print("NO")
        exit(0)
    }
    
}

print(answer.joined(separator: "\n"))