import Foundation

let length = Int(readLine()!)!

var a: [Int] = []
var b: [Int] = []

var res = 0

let num = readLine()!.split(separator: " ").map{Int(String($0))!}
for j in 0...length-1 {
    a.append(num[j])
}

let num2 = readLine()!.split(separator: " ").map{Int(String($0))!}
for j in 0...length-1 {
    b.append(num2[j])
}

let sortA = a.sorted(by: <)
let sortB = b.sorted(by: >)

for i in 0...length-1 {
    res += sortA[i] * sortB[i]
}

print(res)
