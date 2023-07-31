import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var max = 0

for i in 0..<arr.count-1 {
    if arr[i] < arr[i+1] {
        var arr2 = [arr[i], arr[i+1]]
        for j in i+1..<arr.count-1 {
            if arr[j] < arr[j+1] {
                arr2.append(arr[j+1])
            } else {
                break
            }
        }
        if max < arr2.last! - arr2.first! {
            max = arr2.last! - arr2.first!
        }
    }
}

print(max)