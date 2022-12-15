import Foundation

let input = Int(readLine()!)!

var numArr: [Int] = []
var resArr: [Int] = []

for i in 1...input {
    numArr.append(i)
}

while numArr.count != 1 {
    var tmp = 0
    resArr.append(numArr[0])
    numArr.remove(at: 0)
    
    tmp = numArr[0]
    numArr.remove(at: 0)
    numArr.append(tmp)
}
resArr.append(numArr[0])

for i in resArr {
    print(i, terminator: " ")
}
