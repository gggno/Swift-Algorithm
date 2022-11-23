import Foundation

let input = Int(readLine()!)!
var result = "0"
var cnt = 0

var num = input

if input != 0 {
    while input != Int(result) {
        if num < 10 || (Int(result)! != 0 && Int(result)! < 10) {
            result = String(num * 10 + num)
            num = num * 10 + num
            
            cnt += 1
        } else {
            let a = num / 10
            let b = num % 10
            num = (b*10) + ((a + b) % 10)
            result = String(num)
            
            cnt += 1
        }
    }
} else {
    cnt = 1
}
print(cnt)
