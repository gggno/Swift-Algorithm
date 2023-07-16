import Foundation

let input = readLine()!.split(separator: "-").map{Array($0)}
var result = ""

for i in 0..<input.count {
    result += String(input[i][0])
}
print(result)
