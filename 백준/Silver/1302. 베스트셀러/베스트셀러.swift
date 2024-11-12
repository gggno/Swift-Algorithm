import Foundation

let n = Int(readLine()!)!

var dic: [String: Int] = [:]

for _ in 0..<n {
    let book = readLine()!
    
    if dic[book] == nil {
        dic[book] = 1
    } else {
        dic[book]! += 1
    }
}

print(dic.sorted{$0.key < $1.key}.sorted{$0.value > $1.value}.first!.key)