import Foundation

let input = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<input {
    let n = readLine()!.map{$0}
    var point = 1
    var result = 0
    
    for i in n {
        if i == "O" {
            result += point
            point += 1
        } else {
            point = 1
        }
    }
    arr.append(result)
}

for i in arr {
    print(i)
}
