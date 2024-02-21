import Foundation

var cnt = 1

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var l = input[0], p = input[1], v = input[2]
    var num = 0
    
    if l == 0 && p == 0 && v == 0 {
        break
    }
    
    let a = l * (v / p)
    let b = v % p > l ? l : v % p
    
    num += a + b
    
    print("Case \(cnt): \(num)")
    
    cnt += 1
}