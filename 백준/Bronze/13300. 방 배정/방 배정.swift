import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let k = input[1]

var dic: [String:Int] = [:]
var result = 0

for i in 0..<n {
    let num = readLine()!.split(separator: " ").map{String($0)}
    let s = num[0]
    let y = num[1]
    
    if dic[s+y] == nil {
        dic[s+y] = 1
    } else {
        dic[s+y]! += 1
    }
}

for i in dic {
    if i.value > k {
        result += (i.value / k) + 1
    } else {
        result += 1
    }
}
print(result)
