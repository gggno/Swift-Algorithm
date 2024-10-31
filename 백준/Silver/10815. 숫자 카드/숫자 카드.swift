import Foundation

let n = Int(readLine()!)!
let arr = Set(readLine()!.split(separator: " ").map { Int($0)! })

let m = Int(readLine()!)!
let arr2 = readLine()!.split(separator: " ").map { Int($0)! }

for card in arr2 {
    print(arr.contains(card) ? 1 : 0 , terminator: " ")
}