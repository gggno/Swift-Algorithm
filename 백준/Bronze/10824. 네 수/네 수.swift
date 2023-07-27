import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}

let n1 = Int(String(num[0]) + String(num[1]))!
let n2 = Int(String(num[2]) + String(num[3]))!
print(n1+n2)