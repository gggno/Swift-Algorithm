import Foundation

let n = Int(readLine()!)!
var result = 0
var stack: [(Int, Int)] = []

for _ in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    if nums[0] == 1 {
        stack.append((nums[1], nums[2]))
    }
    
    if let pop = stack.popLast() {
        if pop.1-1 == 0 {
            result += pop.0
        } else {
            stack.append((pop.0, pop.1-1))
        }
    }
}

print(result)