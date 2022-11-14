import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var numArr: [Int] = []

numArr.append(input[0])
numArr.append(input[1])
numArr.append(input[2])

let result = numArr.sorted(by: <)
print(result[1])
