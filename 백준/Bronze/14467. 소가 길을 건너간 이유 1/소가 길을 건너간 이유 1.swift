import Foundation

let n = Int(readLine()!)!
var dic: [Int: Int] = [:]
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let a = input[0], b = input[1]
    
    if dic[a] == nil {
        dic[a] = b
    } else {
        if dic[a]! != b {
            result += 1
            dic[a]! = b
        }
    }
}

print(result)