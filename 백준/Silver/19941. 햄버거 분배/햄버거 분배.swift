import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]

var arr: [String] = readLine()!.map{String($0)}
var cnt = 0

for i in 0..<arr.count {
    if arr[i] == "P" {
        let l = i-k >= 0 ? i-k : 0
        let r = i+k <= n-1 ? i+k : n-1
        
        for j in l...r {
            if arr[j] == "H" {
                arr[j] = "X"
                cnt += 1
                break
            }
        }
    }
}

print(cnt)
