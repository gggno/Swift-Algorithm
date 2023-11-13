import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
let b = input[0], c = input[1], d = input[2]

var burger = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
var side = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
var drink = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)

let minValue = min(burger.count, side.count, drink.count)

var result = 0

for i in 0..<minValue {
    result += burger[i] - burger[i] / 10
    result += side[i] - side[i] / 10
    result += drink[i] - drink[i] / 10
}

for i in minValue..<burger.count {
    result += burger[i]
}

for i in minValue..<side.count {
    result += side[i]
}

for i in minValue..<drink.count {
    result += drink[i]
}

print(burger.reduce(0, +) + side.reduce(0, +) + drink.reduce(0, +))
print(result)