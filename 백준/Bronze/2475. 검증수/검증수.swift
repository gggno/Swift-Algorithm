import Foundation

let arr = readLine()!.split(separator: " ").map{Int($0)!}

var num = 0
for i in arr {
    num += i * i
}

print(num % 10)