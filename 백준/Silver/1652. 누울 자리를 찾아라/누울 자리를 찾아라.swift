import Foundation

let n = Int(readLine()!)!
var arr: [[String]] = []
var re1 = 0
var re2 = 0

for i in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

for i in 0..<n {
    var state1 = false
    var cnt1 = 0
    for j in 0..<n {
        if arr[i][j] == "." {
            cnt1 += 1
            if cnt1 > 1 {
                state1 = true
            }
        } else {
            if cnt1 > 1 {
                re1 += 1
            }
            cnt1 = 0
            state1 = false
        }
    }
    if state1 {
        re1 += 1
    }
    
    var state2 = false
    var cnt2 = 0
    for j in 0..<n {
        if arr[j][i] == "." {
            cnt2 += 1
            if cnt2 > 1 {
                state2 = true
            }
        } else {
            if cnt2 > 1 {
                re2 += 1
            }
            cnt2 = 0
            state2 = false
        }
    }
    if state2 {
        re2 += 1
    }
}

print(re1, re2)