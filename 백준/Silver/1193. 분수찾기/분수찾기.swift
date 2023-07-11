import Foundation

let n = Int(readLine()!)!

var top = 1
var bottom = 2
var cnt = 0
var num = 1
var compare = true

if n > 1 {
    while cnt < n-2 {
        cnt += 1
        
        if bottom == 1 && (top % 2 != 0) {
            top -= 1
            bottom += 1
            compare = true
            continue
        }
        
        if bottom == 1 && (top % 2 == 0) {
            top += 1
            continue
        }
        
        if top == 1 && (bottom % 2 == 0) {
            top += 1
            bottom -= 1
            continue
        }
        
        if top == 1 && (bottom % 2 != 0) {
            bottom += 1
            compare = false
            continue
        }
        
        if compare == true { // 홀수
            top -= 1
            bottom += 1
            
        } else { // 짝수
            top += 1
            bottom -= 1
        }
        
    }
    print("\(top)/\(bottom)")
} else {
    print("1/1")
}
