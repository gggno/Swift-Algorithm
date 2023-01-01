import Foundation

let aNum = readLine()!
let bNum = readLine()!

var mix: [Int] = Array(repeating: 0, count: 16)

var cnt1 = 0
for i in aNum {
    mix[cnt1] = Int(String(i))!
    cnt1 += 2
}

var cnt2 = 1
for i in bNum {
    mix[cnt2] = Int(String(i))!
    cnt2 += 2
}

for i in (2...15).reversed() {
    for j in 0..<i {
        mix[j] = (mix[j] + mix[j+1]) % 10
    }
}
print(String(mix[0])+String(mix[1]))
