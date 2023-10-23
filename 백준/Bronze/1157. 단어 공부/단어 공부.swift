import Foundation

let str = readLine()!.uppercased()

var dic: [Character: Int] = [:]

for s in str {
    if dic[s] == nil {
        dic[s] = 1
    } else {
        dic[s]! += 1
    }
}

var maxValue = dic.values.max()
var maxC = ""
var cnt = 0

for d in dic {
    if d.value == maxValue {
        cnt += 1
        maxC = String(d.key)
    }
}

if cnt == 1 {
    print(maxC)
} else {
    print("?")
}