import Foundation

let input = readLine()!.split(separator: " ")

let x = Int(input[0])!
let y = Int(input[1])!
let w = Int(input[2])!
let h = Int(input[3])!

let minArr: [Int] = [x, y, w-x, h-y]
print(minArr.min()!)
