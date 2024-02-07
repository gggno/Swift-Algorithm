import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

var stack: [Int] = []

for i in 0..<n {
    if stack.isEmpty {
        stack.append(i+1)
        
    } else {
        let index = stack.count - input[i]
        stack.insert(i+1, at: index)
    }
}

print(stack.map{String($0)}.joined(separator: " "))