import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (A, B) = (input[0], input[1])

print(A * (B - 1) + 1)
