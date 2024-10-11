import Foundation

let n = Int(readLine()!)!
var cnt = 0

for _ in 0..<n {
    let str = readLine()!.map{String($0)}
    var arr: [String] = [str[0]]
    var now = str[0]
    var state = true
    
    for j in 1..<str.count {
        if now == str[j] {
            continue
            
        } else if arr.contains(str[j]) {
            state = false
            break
        } else {
            arr.append(now)
            now = str[j]
        }
    }
    
    if state {
        cnt += 1
    }
}

print(cnt)