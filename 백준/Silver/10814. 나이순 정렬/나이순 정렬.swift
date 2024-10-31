import Foundation

let n = Int(readLine()!)!

var arr: [(age: Int, name: String)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let age = Int(input[0])!, name = String(input[1])
    arr.append((age, name))
}

for i in arr.sorted{$0.age < $1.age} {
    print(i.age, i.name)
}