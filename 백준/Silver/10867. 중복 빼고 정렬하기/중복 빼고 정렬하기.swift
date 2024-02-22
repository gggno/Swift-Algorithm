import Foundation

let input = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map{Int($0)!}
print(Array(Set(arr)).sorted().map{String($0)}.joined(separator: " "))