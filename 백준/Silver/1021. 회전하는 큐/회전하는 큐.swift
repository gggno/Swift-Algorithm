import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var target = readLine()!.split(separator: " ").map { Int($0)! }
var array = [Int](1...n)
var answer = 0

while !target.isEmpty {
    if target.first == array.first {
        target.removeFirst()
        array.removeFirst()
        continue
    }
    
    let start = array.firstIndex(of: target.first!)!
    let end = array.count - array.firstIndex(of: target.first!)!
    
    if start < end {
        let firstValue = array.removeFirst()
        array.append(firstValue)
    } else {
        let lastValue = array.removeLast()
        array.insert(lastValue, at: 0)
    }
    
    answer += 1
}

print(answer)