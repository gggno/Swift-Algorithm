import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []
var num = 1

for i in 1...n {
    
    let input = readLine()!
    var nn = 0
    if input.contains("push") {
        let arr = input.split(separator: " ")
        nn = Int(arr[1])!
    }
    if input == "push \(nn)" {
        stack.append(nn)
    } else if input == "pop" {
        if stack.isEmpty {
            print(-1)
            continue
        } else {
            print(stack.last!)
            stack.popLast()
        }
        
    } else if input == "size" {
        print(stack.count)
    } else if input == "empty" {
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
    } else if input == "top" {
        if stack.isEmpty {
            print(-1)
            continue
        } else {
            print(stack.last!)
        }
        
    }
    
}
