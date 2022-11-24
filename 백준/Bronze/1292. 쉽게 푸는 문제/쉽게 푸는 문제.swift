import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let start = input[0]
let end = input[1]

var num = 1
var resultArr: [Int] = []

while 1 != 0 {
    for i in 1...num {
        resultArr.append(num)
    }
    num += 1
    
    if num > 1000 {
        break
    }
}
var result = 0
for i in start-1...end-1 {
    result += resultArr[i]
}
print(result)
