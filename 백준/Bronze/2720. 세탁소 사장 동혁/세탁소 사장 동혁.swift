import Foundation

let n = Int(readLine()!)!

var a = 0
var b = 0
var c = 0
var d = 0

for i in 1...n {
    var testCase = Int(readLine()!)!
    while testCase > 0 {
        if (testCase / 25) > 0 {
            a += testCase / 25
            testCase -= (testCase / 25) * 25
            continue
        } else if (testCase / 10) > 0 {
            b += testCase / 10
            testCase -= (testCase / 10) * 10
            continue
        } else if (testCase / 5) > 0 {
            c += testCase / 5
            testCase -= (testCase / 5) * 5
            continue
        } else {
            d += testCase / 1
            testCase -= (testCase / 1) * 1
        }
    }
    print(a, b, c, d)
    a = 0
    b = 0
    c = 0
    d = 0
}
