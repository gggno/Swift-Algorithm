import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0], l = input[1]

var result: [Int] = []
var temp = 0

while true {
    let start = (2 * n - l * l + l) / (2 * l)
    let end = start + l - 1

    if start < 0 {
        let offset = abs(start)
        
        for i in 0...end + offset {
            result.append(i)
            temp += i
        }
        
    } else {
        for i in start...end {
            result.append(i)
            temp += i
        }
    }

    if temp == n {
        break
        
    } else {
        result = []
        temp = 0
        l += 1
        
        if l > 100 {
            result.append(-1)
            break
        }
    }
}

print(result.map { String($0) }.joined(separator: " "))