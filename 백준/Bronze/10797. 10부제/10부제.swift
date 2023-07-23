import Foundation

let num = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}
print(input.filter{$0 == num}.count)
