import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var min = 0
var max = arr.max()!
var sum = 0
var result = 0

while true {
    let point = (max + min) % 2 == 0 ? (max + min)/2 : (max + min + 1) / 2
    
    for t in arr {
        if t - point <= 0 { continue }
        
        sum += t - point
    }
    
    if sum == m {
        print(point)
        break
        
    } else if sum < m {
        max = point
        sum = 0
        
    } else if sum > m {
        min = point
        sum = 0
        result = result < point ? point : result
    }
    
    if min + 1 == max {
        print(result)
        break
    }
}