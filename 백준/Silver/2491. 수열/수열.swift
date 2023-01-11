import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map({Int($0)!})

var cnt1 = 1
var cnt2 = 1
var dp1: [Int] = []
var dp2: [Int] = []

for i in 0..<input.count-1 {
    
    if input[i] <= input[i+1] { // 증가
        cnt1 += 1
    } else {
        cnt1 = 1
    }
    
    if input[i] >= input[i+1] { // 감소
        cnt2 += 1
    } else {
        cnt2 = 1
    }
    dp1.append(cnt1)
    dp2.append(cnt2)
}
if n > 1 {
    print(max(dp1.max()!, dp2.max()!))
} else {
    print(1)
}
