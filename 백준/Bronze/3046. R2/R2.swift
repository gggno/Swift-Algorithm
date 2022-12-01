import Foundation

let num = readLine()!.split(separator: " ").map{Int(String($0))!}

print((2*num[1] - num[0]))
