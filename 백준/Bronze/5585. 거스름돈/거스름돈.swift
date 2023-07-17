import Foundation

var n = 1000 - Int(readLine()!)!
var result = 0

if n / 500 > 0 {
    result += n / 500
    n -= 500 * (n / 500)
}

if n / 100 > 0 {
    result += n / 100
    n -= 100 * (n / 100)
}

if n / 50 > 0 {
    result += n / 50
    n -= 50 * (n / 50)
}

if n / 10 > 0 {
    result += n / 10
    n -= 10 * (n / 10)
}

if n / 5 > 0 {
    result += n / 5
    n -= 5 * (n / 5)
}

if n / 1 > 0 {
    result += n / 1
    n -= 1 * (n / 1)
}
print(result)
