import Foundation

let n = Int(readLine()!)!
var state = false
var result = ""
var arr: [[String]] = []

for _ in 0..<n {
    let str: [String] = readLine()!.map{String($0)}
    
    if !state {
        if str == str.reversed() {
            result = "\(str.count) \(str[str.count/2])"
            arr.append(str)
            state = true
        } else {
            for i in arr {
                if i == str.reversed() {
                    result = "\(str.count) \(str[str.count/2])"
                    state = true
                }
            }
            arr.append(str)
        }
    }
}

print(result)