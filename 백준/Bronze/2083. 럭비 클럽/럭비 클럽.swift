import Foundation

var resultArr: [String] = []

while 1 != 0 {
    let input = readLine()!.split(separator: " ")
    if input[0] == "#" {
        break
    }
    if Int(input[1])! > 17 || Int(input[2])! >= 80 {
        resultArr.append("\(input[0]) Senior")
    } else {
        resultArr.append("\(input[0]) Junior")
    }
}

for i in resultArr {
    print(i)
}
