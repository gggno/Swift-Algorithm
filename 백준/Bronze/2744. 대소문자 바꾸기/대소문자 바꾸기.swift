import Foundation

let str = readLine()!
var result: String = ""

for c in str {
    if c.isLowercase {result += c.uppercased()}
    else if c.isUppercase {result += c.lowercased()}
}

print(result)