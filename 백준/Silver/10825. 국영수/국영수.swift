import Foundation

let n = Int(readLine()!)!

var arr: [[String]] = []

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{String($0)})
}

let a = arr
    .sorted{$0[0] < $1[0]}
    .sorted{Int($0[3])! > Int($1[3])!}
    .sorted{Int($0[2])! < Int($1[2])!}
    .sorted{Int($0[1])! > Int($1[1])!}

for i in a {
    print(i[0])
}