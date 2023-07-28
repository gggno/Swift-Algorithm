import Foundation

let t = Int(readLine()!)!

for i in 0..<t {
    let n = Int(readLine()!)!
    var arr = Array(repeating: 1, count: n+1)
    arr[0] = -1
    for j in 2...n {
        for k in 1...n {
            if k % j == 0 {
                if arr[k] == 0 {
                    arr[k] = 1
                } else {
                    arr[k] = 0
                }
            }
        }
    }
    var cnt = 0
    for n in arr {
        if n == 1 {
            cnt += 1
        }
    }
    print(cnt)
}