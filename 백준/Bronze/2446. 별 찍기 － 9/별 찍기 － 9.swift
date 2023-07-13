import Foundation

let n = Int(readLine()!)!

if n > 1 {
    for i in (1...n).reversed() {
        let str = String(repeating: " ", count: n-i)
        let star = String(repeating: "*", count: i*2-1)
        print(str+star)
    }
    for i in 2...n {
        let str = String(repeating: " ", count: n-i)
        let star = String(repeating: "*", count: i*2-1)
        print(str+star)
    }
} else {
    print("*")
}
