import Foundation

let str = readLine()!
let alpha: [Character] = ["a", "e", "i", "o", "u"]
var result = 0

for c in str {
    if alpha.contains(c) {
        result += 1
    }
}

print(result)