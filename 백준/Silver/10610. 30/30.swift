import Foundation

let n = readLine()!
let arr = n.map{ Int(String($0))! }.sorted(by: >)

if !arr.contains(0) || arr.reduce(0, +) % 3 != 0 {
    print("-1")
    
} else {
    print(arr.map{ String($0) }.joined())
}