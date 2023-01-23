import Foundation

let input = readLine()!.split(separator: " ").map{String($0)}

let max1 = Int(input[0].replacingOccurrences(of: "5", with: "6"))!
let max2 = Int(input[1].replacingOccurrences(of: "5", with: "6"))!

let min1 = Int(input[0].replacingOccurrences(of: "6", with: "5"))!
let min2 = Int(input[1].replacingOccurrences(of: "6", with: "5"))!

print(min1+min2, max1+max2)
