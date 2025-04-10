import Foundation

var t = Int(readLine()!)!

for _ in 0..<t {
    var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    
    arr.remove(at: 0)
    arr.remove(at: 3)
    
    if arr[2] - arr[0] >= 4 {
        print("KIN")
    } else {
        print(arr.reduce(0, +))
    }
}