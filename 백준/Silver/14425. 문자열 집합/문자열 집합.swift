import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var arr: Set<String> = []

var cnt = 0

for _ in 0..<n {
    arr.insert(readLine()!)
}

for _ in 0..<m {
    cnt += arr.contains(readLine()!) ? 1 : 0
}

print(cnt)