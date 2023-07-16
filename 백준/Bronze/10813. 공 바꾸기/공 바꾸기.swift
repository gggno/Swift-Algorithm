import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]

var arr: [Int] = []

for i in 1...n {
    arr.append(i)
}

for i in 0..<m {
    var tmp = 0
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    let a = num[0]
    let b = num[1]
    
    tmp = arr[a-1]
    arr[a-1] = arr[b-1]
    arr[b-1] = tmp
}

for i in arr {
    print(i, terminator: " ")
}