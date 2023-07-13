import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var n = input[0]
var k = input[1]
var nn = 1
var kk = 1

if k > 0 {
    for i in (1...k).reversed() {
        nn *= n
        kk *= k
        n -= 1
        k -= 1
    }
    print(nn/kk)
} else {
    print(1)
}