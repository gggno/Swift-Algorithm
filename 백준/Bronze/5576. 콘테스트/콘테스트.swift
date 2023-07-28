import Foundation

var arr1: [Int] = []
var arr2: [Int] = []

for i in 0..<10 {
    arr1.append(Int(readLine()!)!)
}

for i in 0..<10 {
    arr2.append(Int(readLine()!)!)
}
arr1.sort(by: >)
arr2.sort(by: >)
print(arr1[0]+arr1[1]+arr1[2], arr2[0]+arr2[1]+arr2[2])
