import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    let a = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let b = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    var cnt = 0
    
    for i in a {
        for j in b {
            if i > j {
                cnt += 1
            }
        }
    }
    print(cnt)
}
