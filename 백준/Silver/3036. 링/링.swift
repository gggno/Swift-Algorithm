import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int($0)!}

for i in 1..<nums.count {
    let num = gcd(nums[0], nums[i])
    print("\(nums[0] / num)/\(nums[i] / num)")
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a % b)
    }
}