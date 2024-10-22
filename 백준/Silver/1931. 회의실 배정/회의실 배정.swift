import Foundation

let n = Int(readLine()!)!

var time: [(Int, Int)] = []
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    time.append((input[0], input[1]))
}

time = time.sorted{$0.0 < $1.0}.sorted{$0.1 < $1.1}

var now = 0
for i in time {
    if now <= i.0 {
        result += 1
        now = i.1
    }
}

print(result)