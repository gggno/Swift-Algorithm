import Foundation

let inputNum = Int(readLine()!)!

let num = readLine()!.split(separator: " ")

var numArr: [Int] = []

for i in 0...inputNum-1 {
    numArr.append(Int(num[i])!)
}

var result = 0
for i in 0...inputNum-1 {
    
    if i > 0 && numArr[i] == 1 && numArr[i-1] > 0 {
        numArr[i] = numArr[i-1] + 1
        result += numArr[i]
    } else if numArr[i] == 1{
        result += 1
    }
}

print(result)
