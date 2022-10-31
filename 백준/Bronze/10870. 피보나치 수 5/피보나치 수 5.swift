import Foundation

let input = Int(readLine()!)!

var num: [Int] = [0, 1]

if input >= 2 {
    for i in 2...input {
        num.append(num[i-1] + num[i-2])
    }
}
print(num[input])
