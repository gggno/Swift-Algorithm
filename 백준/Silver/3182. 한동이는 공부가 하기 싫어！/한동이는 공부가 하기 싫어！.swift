import Foundation

let n = Int(readLine()!)!
var dic: [Int:Int] = [:]

for i in 1...n {
    dic[i] = Int(readLine()!)!
}

var result: [Int] = []
for i in 1...n {
    var index = i
    var cnt = 0
    var arr: [Int] = []
    while dic[index] != i {
        if arr.contains(dic[index]!) {
            break
        } else {
            arr.append(dic[index]!)
            cnt += 1
            index = dic[index]!
        }
    }
    result.append(cnt)
}

var max = 0
var real = 0
for i in 0..<result.count {
    if max < result[i] {
        max = result[i]
        real = i+1
    }
}

print(real)