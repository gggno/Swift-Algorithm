import Foundation

var maxIndex = 0
var maxValue = 0

for i in 0..<5 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var sum = 0
    
    for j in 0..<4 {
        sum += input[j]
    }
    
    if maxValue < sum {
        maxIndex = i+1
        maxValue = sum
    }
}
print(maxIndex, maxValue)
