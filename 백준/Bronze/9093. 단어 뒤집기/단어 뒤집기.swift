import Foundation

let n = Int(readLine()!)!
var arr: [String] = Array(repeating: "", count: n)

for i in 0..<n {
    let input = readLine()!.split(separator: " ")
    for j in input {
        arr[i] += j.reversed() + " "
    }
}

for i in arr {
    print(i)
}
