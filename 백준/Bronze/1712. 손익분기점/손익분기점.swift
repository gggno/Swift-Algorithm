import Foundation

let input = readLine()!.split(separator: " ")

let A = Int(input[0])!

let B = Int(input[1])!

let C = Int(input[2])!

if C - B <= 0 {
    print("-1")
} else {
    print((A / (C-B)) + 1)
}
