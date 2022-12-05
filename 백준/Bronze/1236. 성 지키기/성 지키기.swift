import Foundation

let input = readLine()!.split(separator: " ").map { num in
   return Int(String(num))!
}

var arr = Array(repeating: [String](), count: input[0])
var row = 0
var col = 0


for i in 0...input[0]-1 {
    let str = readLine()!
    arr[i] = str.map{String($0)}
    if !str.contains("X") {
        row += 1
    }
}

for i in 0...input[1]-1 {
    var cnt = 0
    for j in 0...input[0]-1 {
        if arr[j][i] == "X" {
            break
        } else {
            cnt += 1
        }
    }
    if input[0] == cnt {
        col += 1
    }
}
print(max(row, col))
