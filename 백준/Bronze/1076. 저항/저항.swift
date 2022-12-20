import Foundation

var colorArr:[String] = []

for _ in 0..<3 {
    let input = readLine()!
    colorArr.append(input)
}

let dic1: [Int:String] = [0:"black", 1:"brown", 2:"red", 3:"orange", 4:"yellow", 5:"green", 6:"blue", 7:"violet", 8:"grey", 9:"white"]
let dic2: [String:Int] = ["black":1, "brown":10, "red":100, "orange":1000, "yellow":10000, "green":100000, "blue":1000000, "violet":10000000, "grey":100000000, "white":1000000000]

var cnt = 0

for i in 0..<10 {
    if colorArr[0] == dic1[i] {
        cnt += i * 10
        break
    }
}

for i in 0..<10 {
    if colorArr[1] == dic1[i] {
        cnt += i
        break
    }
}

for i in dic2 {
    if colorArr[2] == i.key {
        cnt *= i.value
    }
}

print(cnt)
