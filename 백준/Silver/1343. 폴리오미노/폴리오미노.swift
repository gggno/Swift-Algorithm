import Foundation

let a = "AAAA"
let b = "BB"

let input = readLine()!

let str1 = input.replacingOccurrences(of: "XXXX", with: "AAAA")
let str2 = str1.replacingOccurrences(of: "XX", with: "BB")

if str2.contains("X") {
    print("-1")
} else {
    print(str2)
}
