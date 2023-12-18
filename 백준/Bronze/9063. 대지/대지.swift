import Foundation

let n = Int(readLine()!)!

var minX = Int.max, minY = Int.max
var maxX = Int.min, maxY = Int.min

var xArr: [Int] = []
var yArr: [Int] = []

for i in 0..<n {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    
    xArr.append(num[0])
    yArr.append(num[1])
}

minX = xArr.min()!
maxX = xArr.max()!
minY = yArr.min()!
maxY = yArr.max()!

if n > 1 {
    print((maxX-minX) * (maxY-minY))
} else {
    print(0)
}