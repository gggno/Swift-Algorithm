import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 1001)

for _ in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let l = nums[0], h = nums[1]
    arr[l] = h
}

let maxHeightIndex = arr.firstIndex(of: arr.max()!)!

var leftArea = 0, leftHeight = 0, rightArea = 0, rightHeight = 0

// 왼쪽 넓이 구하기
for i in 0..<maxHeightIndex {
    leftHeight = max(leftHeight, arr[i])
    leftArea += leftHeight
}

// 오른쪽 넓이 구하기
for i in (maxHeightIndex+1...arr.count-1).reversed() {
    rightHeight = max(rightHeight, arr[i])
    rightArea += rightHeight
}

print(leftArea + arr[maxHeightIndex] + rightArea)