import Foundation

var n = Int(readLine()!)!
var result: [Int] = []

let arr = readLine()!.split(separator: " ").map{Int($0)!}
var dic: [Int: Int] = [:]
var next = 0

for i in arr.sorted() {
    if dic[i] == nil {
        dic[i] = next
        next += 1
    }
}
print(arr.map{String(dic[$0]!)}.joined(separator: " "))