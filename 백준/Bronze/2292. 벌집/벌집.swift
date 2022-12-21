import Foundation

let input = Int(readLine()!)!
var cnt = 1
var num = 1
while input > num {
    num += 6 * cnt
    cnt += 1
}

print(cnt)
