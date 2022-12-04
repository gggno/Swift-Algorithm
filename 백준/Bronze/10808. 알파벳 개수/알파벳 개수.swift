import Foundation

var alphaArr = [Int](repeating: 0, count: 26)
let input = readLine()!

for i in input {
    alphaArr[Int(i.asciiValue!)-97] += 1
}

print(alphaArr.map{"\($0)"}.joined(separator: " "))
