import Foundation

let n = Int(readLine()!)!
let arr1 = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
let m = Int(readLine()!)!
let arr2 = readLine()!.split(separator: " ").map{Int($0)!}

var dic: [Int: Int] = [:]

for i in arr1 {
    if dic[i] == nil {
        dic[i] = 1
    } else {
        dic[i]! += 1
    }
}
var result: [Int] = []

for i in arr2 {
    result.append(dic[i] ?? 0)
}

print(result.map{String($0)}.joined(separator: " "))