import Foundation

let input = readLine()!.split(separator: " ").map{String($0)}
let n = input[0], game = input[1]

var id: [String] = []

for _ in 0..<Int(n)! {
    id.append(readLine()!)
}

id = Array(Set(id))

if game == "Y" {
    print(id.count/1)
} else if game == "F" {
    print(id.count/2)
} else if game == "O" {
    print(id.count/3)
}