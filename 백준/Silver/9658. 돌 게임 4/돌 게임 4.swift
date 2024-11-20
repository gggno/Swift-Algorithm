import Foundation

let n = Int(readLine()!)!
print(n % 7 == 1 || n % 7 == 3 ? "CY" : "SK")