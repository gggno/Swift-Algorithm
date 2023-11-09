import Foundation

let n = Int(readLine()!)!

var arr: [Int] = []
var max = 0
var result = 0

for _ in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var max = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                if max < String(nums[i] + nums[j] + nums[k]).map{Int(String($0))!}.last! {
                    max = String(nums[i] + nums[j] + nums[k]).map{Int(String($0))!}.last!
                }
            }
        }
    }
    arr.append(max)
}

for (index, data) in arr.enumerated() {
    if max <= data {
        max = data
        result = index
    }
}

print(result+1)