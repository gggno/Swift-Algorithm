import Foundation

let input = Int(readLine()!)!
var dpArr: [Int] = Array(repeating: 0, count: input+1)

for i in 2..<input+1 {
    dpArr[i] = dpArr[i-1] + 1
    
    if i % 3 == 0 {
        dpArr[i] = min(dpArr[i], dpArr[i/3]+1)
    }
    if i % 2 == 0 {
        dpArr[i] = min(dpArr[i], dpArr[i/2]+1)
    }
    
}
print(dpArr[input])
