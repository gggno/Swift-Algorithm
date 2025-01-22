import Foundation

let n = Int(readLine()!)!
var q1 = 0, q2 = 0, q3 = 0, q4 = 0, axis = 0

for i in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let x = nums[0], y = nums[1]
    
    if x == 0 || y == 0 {
        axis += 1
        
    } else if x > 0 && y > 0 {  // 1 사분면
        q1 += 1
    } else if x < 0 && y > 0 {  // 2 사분면
        q2 += 1
    } else if x < 0 && y < 0 {  // 3 사분면
        q3 += 1
    } else if x > 0 && y < 0 {  // 4 사분면
        q4 += 1
    }
}

print("Q1: \(q1)")
print("Q2: \(q2)")
print("Q3: \(q3)")
print("Q4: \(q4)")
print("AXIS: \(axis)")