import Foundation

let input = Int(readLine()!)!
var cnt = 0
for i in 0...8 {
    let num = Int(readLine()!)!
    
    cnt += num
}
print(input-cnt)
