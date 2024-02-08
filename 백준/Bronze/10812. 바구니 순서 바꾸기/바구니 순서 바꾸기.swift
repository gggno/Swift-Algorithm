import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var stack = Array(1...n)

for _ in 0..<m {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let i = nums[0], j = nums[1], k = nums[2]
    var temp: [Int] = []
    
    for jj in k-1...j-1 {
        temp.append(stack[jj])
    }
    
    for jj in i-1..<k-1 {
        temp.append(stack[jj])
    }
    
    for kk in i-1...j-1 {
        stack[kk] = temp.removeFirst()
    }
    
}
print(stack.map{String($0)}.joined(separator: " "))