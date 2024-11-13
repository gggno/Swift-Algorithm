import Foundation

let n = Int(readLine()!)!

var list: Set<String> = ["ChongChong"]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    if list.contains(input[0]) {
        list.insert(input[1])
    } else if list.contains(input[1]) {
        list.insert(input[0])
    }
}

print(list.count)