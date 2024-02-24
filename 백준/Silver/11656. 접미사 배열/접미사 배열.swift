import Foundation

var s = readLine()!
var arr: [String] = []

for i in 0..<s.count {
    arr.append(s)
    s.removeFirst()
}

for i in arr.sorted() {
    print(i)
}