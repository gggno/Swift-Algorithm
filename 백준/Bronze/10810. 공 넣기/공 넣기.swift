import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]

var result = Array(repeating: 0, count: n+1)

for i in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    for j in nums[0]...nums[1] {
        result[j] = nums[2]
    }
}
result.removeFirst()
print(result.map{String($0)}.joined(separator: " "))