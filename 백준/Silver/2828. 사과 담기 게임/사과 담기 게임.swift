import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var range = (1...m).map { $0 }

let apple = Int(readLine()!)!

var result = 0

for _ in 0..<apple {
    let num = Int(readLine()!)!
    
    if range.contains(num) {
        continue
    } else {
        if range[range.count-1] < num {
            let dis = num - range[range.count-1]
            result += dis
            range = range.map{$0 + dis}
        } else {
            let dis = range[0] - num
            result += dis
            range = range.map{$0 - dis}
        }
    }
    
}

print(result)