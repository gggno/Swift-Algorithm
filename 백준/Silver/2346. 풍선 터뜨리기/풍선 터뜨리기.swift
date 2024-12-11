import Foundation

var n = Int(readLine()!)!
var balloons = readLine()!.split(separator: " ").enumerated().map{($0+1 ,Int(String($1))!)}

var index = 0

var result: [Int] = []

while result.count != n {
    
    let move = balloons[index].1 > 0 ? balloons[index].1 - 1 : balloons[index].1
    
    result.append(balloons[index].0)
    balloons.remove(at: index)
    
    if balloons.isEmpty {break}
    
    index += move
    index %= balloons.count
    
    if index < 0 {index += balloons.count}
}

print(result.map{String($0)}.joined(separator: " "))