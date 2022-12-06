import Foundation

var numDic: [Int:Int] = [:]

for i in 1...8 {
    let input = Int(readLine()!)!
    numDic[input] = i
}

let resDic = numDic.sorted(by: >)
var cnt = 0
var arr: [Int] = []

for i in 0...4 {
    cnt += resDic[i].key
    arr.append(resDic[i].value)
}
let resArr = arr.sorted(by: <)

print(cnt)

for i in 0...4 {
    print(resArr[i], terminator: " ")
}
