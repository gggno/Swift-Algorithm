import Foundation

let n = Int(readLine()!)!
var dic: [String : Int] = [:]

for _ in 0..<n {
    let input = readLine()!.split(separator: ".").map{String($0)}
    let first = input[0], last = input[1]
    
    if dic[last] == nil {
        dic[last] = 1
    } else {
        dic[last]! += 1
    }
}

for i in dic.sorted{$0.0 < $1.0} {
    print(i.key, i.value)
}