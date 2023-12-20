import Foundation

let n = Int(readLine()!)!
var arr: [String] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    var result = ""
    
    for (index, str) in Array(input[1]).enumerated() where index != Int(input[0])! - 1 {
        result += String(str)
    }
    arr.append(result)
}

for i in arr {
    print(i)
}