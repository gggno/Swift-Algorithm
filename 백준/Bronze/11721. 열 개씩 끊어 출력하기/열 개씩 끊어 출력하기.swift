import Foundation

let s = readLine()!
var arr: [String] = []

var str = ""
for i in s {
    str += String(i)
    
    if str.count == 10 {
        arr.append(str)
        str = ""
    }
}

if !str.isEmpty {
    arr.append(str)
}

for i in arr {
    print(i)
}