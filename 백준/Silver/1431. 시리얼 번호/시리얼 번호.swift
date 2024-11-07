import Foundation

let n = Int(readLine()!)!

var arr: [String] = []

for _ in 0..<n {
    arr.append(readLine()!)
}

arr.sort {
    if $0.count != $1.count {
        return $0.count < $1.count
        
    } else {
        if getSum($0) != getSum($1) {
            return getSum($0) < getSum($1)
        } else {
            return $0 < $1
        }
    }
}

func getSum(_ str: String) -> Int {
    var cnt = 0
    
    for i in str {
        if i.isNumber {
            cnt += Int(String(i))!
        }
    }
    
    return cnt
}

for i in arr {
    print(i)
}