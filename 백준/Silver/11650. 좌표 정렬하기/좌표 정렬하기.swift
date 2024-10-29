import Foundation

let n = Int(readLine()!)!

var xy: [(Int, Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    xy.append((input[0], input[1]))
}

for i in xy.sorted{$0.1 < $1.1}.sorted{$0.0 < $1.0} {
    print(i.0, i.1)
}