import Foundation

let n = Int(readLine()!)!
var str = readLine()!

str = str.replacingOccurrences(of: "S", with: "*S*")
str = str.replacingOccurrences(of: "LL", with: "*LL*")
str = str.replacingOccurrences(of: "**", with: "*")

var cnt = 0

for i in str {
    if i == "*" {
       cnt += 1
    }
}

if n < cnt {
    print(n)
} else {
    print(cnt)
}