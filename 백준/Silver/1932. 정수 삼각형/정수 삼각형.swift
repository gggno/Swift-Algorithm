import Foundation

let n = Int(readLine()!)!
var nums: [[Int]] = []

for _ in 0..<n {
    nums.append(readLine()!.split(separator: " ").map {Int($0)!})
}

var arr = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
arr[0][0] = nums[0][0]

for i in 1..<n {
    for j in 0...i {
        if j == 0 {
            arr[i][j] = arr[i - 1][j] + nums[i][j]
            continue
        }
        
        if j == i {
            arr[i][j] = arr[i - 1][j - 1] + nums[i][j]
            continue
        }
        
        arr[i][j] = max(arr[i - 1][j - 1], arr[i - 1][j]) + nums[i][j]
    }
}

print(arr[n - 1].max()!)