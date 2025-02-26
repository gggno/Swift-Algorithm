import Foundation

let c = Int(readLine()!)!

var result: [String] = []

for _ in 0..<c {
    let nums = readLine()!.split(separator: " ").map{Double($0)!}
    let n = nums[0]
    
    let avg = nums[1...].reduce(0, +) / n
    
    let answer = Double(nums[1...].filter { $0 > avg }.count) / n * 100

    result.append(String(format: "%.3f", answer))
}

for r in result {
    print("\(r)%")
}