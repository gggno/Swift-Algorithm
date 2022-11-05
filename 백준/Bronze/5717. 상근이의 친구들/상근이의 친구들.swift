import Foundation

var num: [Int] = []

while (1 != 0) {
    let input = readLine()!.split(separator: " ")
    if Int(input[0])! == 0 && Int(input[1])! == 0 {
        break
    }
    num.append(Int(input[0])!+Int(input[1])!)
}

for i in 0...num.count-1 {
    print(num[i])
}
