import Foundation

var n = Int(readLine()!)!
var cnt = 0

while n > 0 {
    
    if n % 5 == 0 {
        cnt += n / 5
        n = 0
        break
    }  else if (n - 3) > 0 {
        n -= 3
        cnt += 1
    } else if n % 3 == 0 {
        cnt += n / 3
        n = 0
        break
    } else {
        cnt = -1
        break
    }
}
if n == 0 {
    print(cnt)
} else {
    print(-1)
}
