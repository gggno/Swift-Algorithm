import Foundation

let n = readLine()!.split(separator: " ").map{String($0)}

let n1 = String(n[0].reversed())
let n2 = String(n[1].reversed())

let n3 = Int(n1)! + Int(n2)!

let n4 = String(String(n3).reversed())
let n5 = String(Int(n4)!)

print(n5)