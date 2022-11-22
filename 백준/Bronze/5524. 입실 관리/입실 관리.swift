import Foundation

let input = Int(readLine()!)!
var strArr: [String] = []

for i in 0...input-1 {
    let str = readLine()!
    strArr.append(str.lowercased())
}

for i in strArr {
    print(i)
}
