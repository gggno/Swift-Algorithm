import Foundation

let n = Int(readLine()!)!

var result: [String] = []

for _ in 0..<n {
    let str = readLine()!.split(separator: " ").map{String($0)}
    
    var s1 = str[0].sorted()
    var s2 = str[1].sorted()
    
    if s1.count == s2.count {
        if s1 == s2 {
            result.append("\(String(str[0])) & \(String(str[1])) are anagrams.")
        } else {
            result.append("\(String(str[0])) & \(String(str[1])) are NOT anagrams.")
        }
    } else {
        if s1.count < s2.count {
            for _ in 0..<s2.count-s1.count {
                s2.removeLast()
            }
            if s1 == s2 {
                result.append("\(String(str[0])) & \(String(str[1])) are anagrams.")
            } else {
                result.append("\(String(str[0])) & \(String(str[1])) are NOT anagrams.")
            }
        } else {
            result.append("\(String(str[0])) & \(String(str[1])) are NOT anagrams.")
        }
    }
}

for i in result {
    print(i)
}
