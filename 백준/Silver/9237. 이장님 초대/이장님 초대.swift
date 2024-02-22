import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)

var day = 2
var current = 0

for i in arr {
    if current < i {
        current = i
    }
    
    current -= 1
    day += 1
}

print(day+current)