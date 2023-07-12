import Foundation

let nums = readLine()!.split(separator: " ").map{Int($0)!}
var e = 0
var s = 0
var m = 0
var result = 0

while true {
    
    if e == nums[0] && s == nums[1] && m == nums[2] {
        break
    }
    
    if e >= 15 {
        e = 1
    } else {
        e += 1
    }
    
    if s >= 28 {
        s = 1
    } else {
        s += 1
    }
    
    if m >= 19 {
        m = 1
    } else {
        m += 1
    }
    result += 1
}

print(result)
