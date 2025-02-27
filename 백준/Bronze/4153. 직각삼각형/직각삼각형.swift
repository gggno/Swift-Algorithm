import Foundation

var result: [String] = []

while true {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    let a = nums[0], b = nums[1], c = nums[2]
    
    if a == 0 && b == 0 && c == 0 {
        break
    }
    
    if (a*a) + (b*b) == (c*c) {
        result.append("right")
    } else {
        result.append("wrong")
    }
}

for str in result {
    print(str)
}