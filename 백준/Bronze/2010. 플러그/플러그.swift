import Foundation

let input = Int(readLine()!)!

var result = 0

for i in 0...input-1 {
    let num = Int(readLine()!)!
    result += num
}
print(result-(input-1))
