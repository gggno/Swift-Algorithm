import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let k = input[0], n = input[1]

var arr: [Int] = []

for _ in 0..<k {
    arr.append(Int(readLine()!)!)
}

var start = 1
var end = arr.max()!

var result = 0

while start <= end {
    let mid = (start + end) / 2
    var temp = 0
    
    for  i in arr {
        temp += i / mid
    }
    
    if temp < n {
        end = mid - 1
    } else {
        start = mid + 1
        result = mid
    }
}

print(result)