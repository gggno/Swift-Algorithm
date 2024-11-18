import Foundation

let n = Int(readLine()!)!
var arr: [[String]] = []

var x = 0
var y = 0

var heart: (Int, Int) = (0, 0)
var leftArm: Int = 0
var rightArm: Int = 0
var leftLeg: Int = 1
var rightLeg: Int = 1
var waist: Int = 0

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

var state1 = true
// 심장
for i in y..<n {
    for j in 0..<arr[i].count {
        if arr[i][j] == "*" {
            heart = (i+2, j+1)
            y = i
            x = j
            state1 = false
            break
        }
    }
    if !state1 {
        break
    }
}

var state2 = true
var state3 = true
// 팔
for i in y+1..<n {
    // 왼팔
    for j in 0..<arr[i].count {
        if arr[i][j] == "*" && state2 {
            leftArm = x-j
            state2 = false
            break
        }
    }
    // 오른팔
    for j in (0..<arr[i].count).reversed() {
        if arr[i][j] == "*" && state3 {
            rightArm = j-x
            state3 = false
            break
        }
    }
    
    if !state2 && !state3 {
        
        y = i
        break
    }
}

// 허리
for i in y+1..<n {
    if arr[i][x] == "*" {
        waist += 1
    } else {
        y = i
        break
    }
}

// 다리
for i in y+1..<n {
    // 왼발
    if arr[i][x-1] == "*" {
        leftLeg += 1
    }
    // 오른발
    if arr[i][x+1] == "*" {
        rightLeg += 1
    }
}

print(heart.0, heart.1)
print(leftArm, rightArm, waist, leftLeg, rightLeg)