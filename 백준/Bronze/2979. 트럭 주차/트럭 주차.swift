import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let a = input[0], b = input[1], c = input[2]
var arr: [Int] = Array(repeating: 0, count: 101)

for _ in 0..<3 {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    for i in nums[0]..<nums[1] {
        arr[i] += 1
    }
}

var result = 0

for i in arr {
    if i == 1 {
        result += i * a
    } else if i == 2 {
        result += i * b
    } else if i == 3 {
        result += i * c
    }
}

print(result)