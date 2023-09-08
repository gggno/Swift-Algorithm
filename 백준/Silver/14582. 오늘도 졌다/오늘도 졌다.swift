import Foundation

let a = readLine()!.split(separator: " ").map{Int($0)!}
let b = readLine()!.split(separator: " ").map{Int($0)!}

var my = 0
var you = 0
var state = false

for i in 0..<9 {
    my += a[i]
    if my > you {
        state = true
    }
    you += b[i]
}

if my < you && state {
    print("Yes")
} else {
    print("No")
}