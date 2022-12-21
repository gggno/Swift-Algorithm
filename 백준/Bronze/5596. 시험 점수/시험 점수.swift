import Foundation

let input1 = readLine()!.split(separator: " ").map{Int(String($0))!}
let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}

var num1 = 0
for i in input1 {
    num1 += i
}

var num2 = 0
for i in input2 {
    num2 += i
}

if num1 > num2 {
    print(num1)
} else {
    print(num2)
}
