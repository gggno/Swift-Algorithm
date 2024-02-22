import Foundation

let input1 = readLine()!.split(separator: " ").map{Int($0)!}
var n = input1[0], l = input1[1]

let input2 = readLine()!.split(separator: " ").map{Int($0)!}

for i in input2.sorted() {
    if l >= i {
        l += 1
    }
}

print(l)