import Foundation

let n = readLine()!
let arr = Array(n)
var result = 0

if arr.count == 1 {
    result = 1
}

for i in 0..<arr.count/2 {
    
    if arr[i] != arr[(arr.count-1)-i] {
        result = 0
        break
    }
    result = 1
}

print(result)
