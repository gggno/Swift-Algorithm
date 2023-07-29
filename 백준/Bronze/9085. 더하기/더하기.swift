import Foundation

let t = Int(readLine()!)!

for i in 0..<t {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var cnt = 0
    for i in input {
        cnt += i
    }
    print(cnt)
}
