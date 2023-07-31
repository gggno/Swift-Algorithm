import Foundation

let input1 = readLine()!
let input2 = readLine()!
var alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var alpha1 = Array(repeating: 0, count: 26)
var alpha2 = Array(repeating: 0, count: 26)

var result = 0

for i in input1 {alpha1[alphabet.firstIndex(of: i)!] += 1}
for i in input2 {alpha2[alphabet.firstIndex(of: i)!] += 1}

for i in 0..<26 {result += abs(alpha1[i] - alpha2[i])}

print(result)