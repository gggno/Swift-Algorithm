import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})

let n = input[0]
let k = input[1]

if n > 1 {
    
    var resArr = Array(repeating: Array(repeating: 0, count: n+1), count: n)
    
    resArr[0][0] = 1 // 1층
    resArr[1][0] = 1 // 2층
    resArr[1][1] = 1 // 2층
    
    
    for i in 2..<n {
        resArr[i][0] = 1
        resArr[i][i] = 1
        
        for j in 1..<k {
            resArr[i][j] = resArr[i-1][j-1] + resArr[i-1][j]
        }
    }
    
    print(resArr[n-1][k-1])
} else {
    print(1)
}
