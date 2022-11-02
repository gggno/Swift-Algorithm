import Foundation
var snArr: [Int] = []
var result: [Int] = [0,0,0,0,0]

let input = readLine()!.split(separator: " ")

let fn1 = Int(input[0])
let fn2 = Int(input[1])

let input2 = readLine()!.split(separator: " ")

for i in 0...4 {
    snArr.append(Int(input2[i])!)
}

for i in 0...4 {
    result[i] = snArr[i] - (fn1!*fn2!)
}
for i in 0...4 {
    print(result[i], terminator: " ")
}
