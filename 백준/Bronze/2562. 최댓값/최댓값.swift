import Foundation

var numArr: [Int] = []

for i in 0...8 {
    let input = Int(readLine()!)!
    numArr.append(input)
}
print(numArr.max()!)
print((numArr.firstIndex(of: numArr.max()!)! + 1))
