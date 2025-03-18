import Foundation

var n = readLine()!
var cnt = 0

while n.count >= 2 {
    cnt += 1
    n = String(n.map{Int(String($0))!}.reduce(0, +))
}

print(cnt)
if Int(n)! % 3 == 0 {
    print("YES")
}else{
    print("NO")
}