import Foundation

let n = Int(readLine()!)!

var queue: [Int] = Array(1...n)

var index = 0

if n == 1 {
    print(1)
    
} else {
    while true {
        queue[index] = 0
        queue.append(queue[index + 1])
        queue[index + 1] = 0
        
        if queue[queue.count - 2] == 0 {
            print(queue.last!)
            break
        }
        
        index += 2
    }
}