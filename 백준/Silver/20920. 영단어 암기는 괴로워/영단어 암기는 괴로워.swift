import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var dic: [String: Int] = [:]

for _ in 0..<n {
    let str = readLine()!
    
    if str.count < m { continue }
    
    dic[str, default: 0] += 1
}

let sortedDic = dic.sorted {
    if $0.value == $1.value {
        if $0.key.count == $1.key.count {
            return $0.key < $1.key
        }
        return $0.key.count > $1.key.count
    }
    return $0.value > $1.value
}

sortedDic.forEach { print($0.key) }