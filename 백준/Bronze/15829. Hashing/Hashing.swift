import Foundation

let mod = 1234567891
readLine()

let input = readLine()!.map{Int(exactly: $0.asciiValue!)! - 96}
var hash = 0
var m = 1

for i in input {
    hash = (hash + i*m) % mod
    m = (m*31) % mod
}
print(hash)
