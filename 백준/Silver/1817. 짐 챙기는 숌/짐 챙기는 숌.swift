import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var stack: [Int] = []

var result = 1

if n != 0 {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    for i in nums {
        if stack.reduce(0, +) + i <= m {
            stack.append(i)
        } else {
            result += 1
            stack.removeAll()
            stack.append(i)
        }
    }
} else {
    result = 0
}
print(result)