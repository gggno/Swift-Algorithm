import Foundation

let n = Int(readLine()!)!

var result: String = ""

for _ in 0..<n/4 {
    result += "long "
}

print(result + "int")