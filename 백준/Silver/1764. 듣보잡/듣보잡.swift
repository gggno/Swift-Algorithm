import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var dic: [String: Int] = [:]
var nArr: [String] = []
var result: [String] = []

for _ in 0..<n {
    let name = readLine()!

    if dic[name] == nil {
        dic[name] = 1
    } else {
        dic[name]! += 1
    }
}

for _ in 0..<m {
    let name = readLine()!

    if dic[name] == nil {
        dic[name] = 1
    } else {
        dic[name]! += 1
    }
}

for i in dic {
    if i.value > 1 {
        result.append(i.key)
    }
}

print(result.count)
for i in result.sorted() {
    print(i)
}