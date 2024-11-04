import Foundation

var str = readLine()!.map{Character(String($0))}
var stack: [Character] = []
var prev: Character?

var cnt = 0

for c in str {
    if c == "(" {
        stack.append("(")
    } else {
        stack.removeLast()
        cnt += prev! == "(" ? stack.count : 1
    }
    
    prev = c
}

print(cnt)