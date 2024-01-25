import Foundation

let input = readLine()!.map{String($0)}
var cnt = 10

for i in 1..<input.count {
    if input[i-1] == input[i] {
        cnt += 5
    } else {
        cnt += 10
    }
}

print(cnt)