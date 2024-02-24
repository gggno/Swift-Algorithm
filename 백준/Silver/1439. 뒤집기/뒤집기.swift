import Foundation

let s = readLine()!.map{Int(String($0))!}
var zeroCnt = 0, oneCnt = 0

var num = s[0]

for i in 1..<s.count {
    if num != s[i] {
        if num == 0 {
            zeroCnt += 1
        } else if num == 1 {
            oneCnt += 1
        }
        num = s[i]
    }
}

if num == 0 {
    zeroCnt += 1
} else if num == 1 {
    oneCnt += 1
}

print(zeroCnt > oneCnt ? oneCnt : zeroCnt)