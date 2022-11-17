import Foundation

var resultArr: [Int] = []

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

resultArr.append(1-input[0])
resultArr.append(1-input[1])
resultArr.append(2-input[2])
resultArr.append(2-input[3])
resultArr.append(2-input[4])
resultArr.append(8-input[5])

for i in resultArr {
    print(i, terminator: " ")
}
