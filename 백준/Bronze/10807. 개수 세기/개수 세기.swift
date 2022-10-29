import Foundation

let numberCount = Int(readLine()!)!

let num = readLine()!.split(separator: " ")

let equal = Int(readLine()!)!

var cnt = 0

for i in num {
    if equal == Int(i) {
        cnt += 1
    }
}
print(cnt)
