import Foundation

var str = readLine()!

str = str.replacingOccurrences(of: "pi", with: " ")
str = str.replacingOccurrences(of: "ka", with: " ")
str = str.replacingOccurrences(of: "chu", with: " ")

if str.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
    print("YES")
} else {
    print("NO")
}