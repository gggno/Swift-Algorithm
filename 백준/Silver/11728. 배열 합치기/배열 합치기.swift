import Foundation

_ = readLine()
let a = readLine()!.split(separator: " ").map{Int($0)!}
let b = readLine()!.split(separator: " ").map{Int($0)!}

print((a+b).sorted().map{String($0)}.joined(separator: " "))