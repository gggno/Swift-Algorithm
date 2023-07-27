import Foundation

let n = Int(readLine()!)!
var count = 0
var i = 1
while i <= n {
    count += n - i + 1
    i = i * 10
}
print(count)
