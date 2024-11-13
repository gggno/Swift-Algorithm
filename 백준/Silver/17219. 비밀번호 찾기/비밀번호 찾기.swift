import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var dic:[String: String] = [:]

for _ in 0..<n {
    let site = readLine()!.split(separator: " ").map{String($0)}
    dic[site[0]] = site[1]
}

var result: [String] = []

for _ in 0..<m {
    result.append(dic[readLine()!]!)
}

for i in result {
    print(i)
}