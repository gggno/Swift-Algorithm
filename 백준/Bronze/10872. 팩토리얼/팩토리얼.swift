import Foundation

let n = Int(readLine()!)!

var sum = 1

if n != 0 {
    factorial(n)
}

print(sum)

func factorial(_ num: Int) {
    if num == 1 {
        return
    }
    
    sum *= num
    factorial(num-1)
}