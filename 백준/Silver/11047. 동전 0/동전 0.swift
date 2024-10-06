import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], k = input[1]

var money: [Int] = []
var cnt = 0

for _ in 0..<n {
    money.append(Int(readLine()!)!)
}

for i in money.reversed() {
    
    if k / i >= 1 {
        cnt += k / i
        k -= (k / i) * i
    }
}

print(cnt)