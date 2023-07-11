import Foundation

let n = Int(readLine()!)!
var dq: [Int] = []

for _ in 0..<n {
    let input = readLine()!
    
    if input.contains("push_front") {
        let arr = input.split(separator: " ")
        if let num = Int(arr[1]) {
            dq.append(num)
        }
        
    } else if input.contains("push_back") {
        let arr = input.split(separator: " ")
        if let num = Int(arr[1]) {
            dq.insert(num, at: 0)
        }
        
    } else if input == "pop_front" {
        if dq.isEmpty {
            print(-1)
        } else {
            print(dq.last!)
            dq.popLast()
        }
        
    } else if input == "pop_back" {
        if dq.isEmpty {
            print(-1)
        } else {
            print(dq.first!)
            dq.removeFirst()
        }
        
    } else if input == "size" {
        print(dq.count)
        
    } else if input == "empty" {
        print(dq.isEmpty ? 1 : 0)
        
    } else if input == "front" {
        if dq.isEmpty {
            print(-1)
        } else {
            print(dq.last!)
        }
    } else if input == "back" {
        if dq.isEmpty {
            print(-1)
        } else {
            print(dq.first!)
        }
    }
}
