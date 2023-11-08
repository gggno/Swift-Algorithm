import Foundation

let n = Int(readLine()!)!

var t1 = 100, t2 = 100

for _ in 0..<n {
    var nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    if nums[0] > nums[1] {
        t2 -= nums[0]
    } else if nums[0] < nums[1] {
        t1 -= nums[1]
    }
}

print(t1)
print(t2)