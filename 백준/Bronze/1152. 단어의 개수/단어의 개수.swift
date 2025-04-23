import Foundation

let inputStr = readLine()!
var cnt: Int = 1

if inputStr.first == " " {
    cnt -= 1
}

if inputStr.last == " " {
    cnt -= 1
}

for chracter in inputStr {
    if chracter == " " {
        cnt += 1
    }
}

print(cnt)
