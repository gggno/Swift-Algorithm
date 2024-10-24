import Foundation

let n = Int(readLine()!)!

var queue: [Int] = []
var result: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        queue.append(Int(input[1])!)
    
    case "pop":
        result.append(queue.isEmpty ? -1 : queue.removeFirst())

    case "size":
        result.append(queue.count)

    case "empty":
        result.append(queue.isEmpty ? 1 : 0)

    case "front":
        result.append(queue.isEmpty ? -1 : queue.first!)
        
    case "back":
        result.append(queue.isEmpty ? -1 : queue.last!)
        
    default:
        print("")
    }
}

for i in result {
    print(i)
}