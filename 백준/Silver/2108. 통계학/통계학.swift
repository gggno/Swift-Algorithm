import Foundation

let n = Int(readLine()!)!
var num: [Int] = []

for _ in 0..<n {
    num.append(Int(readLine()!)!)
}

var avg = num.reduce(0) {$0 + $1}
print(Int(round(Double(avg) / Double(n))))
let arr = num.sorted(by: <)
let middle = arr[n/2] // 중앙값
print(middle)
var dic: [Int:Int] = [:]

for i in 0..<n {
    if (dic[num[i]] != nil) {
        dic[num[i]]! += 1
    } else {
        dic[num[i]] = 1
    }
}

let minDic = dic.sorted{$0.0 < $1.0}.sorted{$0.1 > $1.1}
var minValue = num[0]
if n > 1 {
    if minDic[0].value == minDic[1].value {
        minValue = minDic[1].key
    } else {
        minValue = minDic[0].key
    }
}
print(minValue)

print(abs(num.max()! - num.min()!))
