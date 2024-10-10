import Foundation

let str = readLine()!.split(separator: "-")

var arr: [Int] = []

for i in str {
    arr.append(i.split(separator: "+").map{Int($0)!}.reduce(0, +))
}

if arr.count > 1 {
    var total = arr[0]
    for j in 1..<arr.count {
        total -= arr[j]
    }
    print(total)
    
} else {
    print(arr[0])
}