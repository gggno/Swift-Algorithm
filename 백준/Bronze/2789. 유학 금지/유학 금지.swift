import Foundation

let noWord = "CAMBRIDGE"
let str = readLine()!
var result: [String] = []

for c in str {
    if !noWord.contains(c) {
        result.append(String(c))
    }
}

print(result.joined())