import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    for _ in 0..<input[1] {
        let nums = readLine()!.split(separator: " ").map{Int($0)!}
    }
    print(input[0] - 1)
}