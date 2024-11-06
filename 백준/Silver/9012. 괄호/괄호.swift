import Foundation

let n = Int(readLine()!)!

var arr: [String] = []

var result: [String] = []

for _ in 0..<n {
    arr.append(readLine()!)
}

for i in arr {
    var cnt = 0
    
    for j in i {
        
        if j == "(" {
            cnt += 1
        } else if j == ")" {
            cnt -= 1
        }
        
        if cnt < 0 {
            break
        }
    }
    
    if cnt < 0 || cnt > 0 {
        result.append("NO")
    } else {
        result.append("YES")
    }
}

for i in result {
    print(i)
}