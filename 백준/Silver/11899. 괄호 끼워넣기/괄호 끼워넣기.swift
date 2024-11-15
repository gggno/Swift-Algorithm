import Foundation

let s = readLine()!
var cnt = 0
var result = 0

for i in s {
    
    if i == "(" {
        cnt += 1
        
    } else if i == ")" {
        if cnt > 0 {
            cnt -= 1
        } else {
            result += 1
            cnt = 0
        }
    }
}

print(result + cnt)