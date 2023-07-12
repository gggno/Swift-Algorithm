import Foundation

let nums = readLine()!.split(separator: " ").map{Int($0)!}
let n = nums[0]
let m = nums[1]

let list = readLine()!.split(separator: " ").map{Int($0)!}
var cnt = 0

for i in 0..<n {
    var sum = 0
    for j in i..<n {
        sum += list[j]
        if sum == m {
            cnt += 1
        }
    }
}
print(cnt)