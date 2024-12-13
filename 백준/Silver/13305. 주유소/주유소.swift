import Foundation

var n = Int(readLine()!)!

var l = readLine()!.split(separator: " ").map{Int($0)!}
var city = readLine()!.split(separator: " ").map{Int($0)!}
var minValue = city[0]
var cnt = 0

for i in 0..<l.count {
    minValue = min(minValue, city[i])
    cnt += minValue * l[i]
}

print(cnt)