import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    print((nums.max()! - nums.min()!) * 2)
}