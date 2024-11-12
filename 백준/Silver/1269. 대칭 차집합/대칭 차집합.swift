import Foundation

_ = readLine()
let a = Set(readLine()!.split(separator: " "))
let b = Set(readLine()!.split(separator: " "))

print(a.symmetricDifference(b).count)