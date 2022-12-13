import Foundation

let input = Int(readLine()!)!

var paper = Array(repeating: Array(repeating: 0, count: 100), count: 100)

for i in 0..<input {
    let num = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    for i in num[1]-1..<num[1]+9 {
        for j in num[0]-1..<num[0]+9 {
            paper[i][j] = 1
        }
    }
    
}
var cnt = 0
for i in 0..<100 {
    for j in 0..<100 {
        if paper[i][j] == 1 {
            cnt += 1
        }
    }
}
print(cnt)
