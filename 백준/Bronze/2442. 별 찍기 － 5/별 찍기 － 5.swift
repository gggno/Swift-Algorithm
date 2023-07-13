import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    let str = String(repeating: " ", count: n-i)
    let star = String(repeating: "*", count: i*2-1)
    print(str + star)
}
