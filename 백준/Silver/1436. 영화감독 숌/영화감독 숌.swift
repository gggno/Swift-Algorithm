import Foundation

let n = Int(readLine()!)!
var result = 665
var count = 0

while true {
    result += 1
    let str = String(result)
    var cnt = 0
    
    for c in str {
        if c == "6" {
            cnt += 1
        } else {
            cnt = 0
        }
        
        if cnt == 3 {
            count += 1
        }
    }
    
    if n == count {
        print(result)
        break
    }
    
}
