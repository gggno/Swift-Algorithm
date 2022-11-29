import Foundation

var input = Int(readLine()!)!
var res = 1

while input / 2 > 0 {
    
    if input % 2 == 1 {
        res += 1
    }
    
    input /= 2
}
print(res)
