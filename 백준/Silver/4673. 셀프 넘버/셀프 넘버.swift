import Foundation

var cnt = 1
var arr: Set<Int> = []

while cnt <= 10000 {
    
    let s = String(cnt)
    
    var sum = 0
    for c in s {
        sum += Int(String(c))!
    }
    sum += Int(s)!
    
    arr.insert(sum)
    cnt += 1
}
cnt = 1
while cnt <= 10000 {
    if !arr.contains(cnt) {
        print(cnt)
    }
    cnt += 1
}
