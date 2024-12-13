import Foundation

func recursion(s: [String], l: Int, r: Int) -> Int {
    cnt += 1
    
    if l >= r {
        return 1
    } else if s[l] != s[r] {
        return 0
    } else {
        return recursion(s: s, l: l+1, r: r-1)
    }
}

let n = Int(readLine()!)!
var cnt = 0

for _ in 0..<n {
    cnt = 0
    let str = readLine()!.map{String($0)}
    
    print(recursion(s: str, l: 0, r: str.count-1), cnt)
}