import Foundation

let input = readLine()!
var num: [Int] = []

for i in input {
    num.append(Int(String(i))!)
}
num.sort(by: >)

for i in 0...num.count-1 {
    print(num[i], terminator: "")
}
