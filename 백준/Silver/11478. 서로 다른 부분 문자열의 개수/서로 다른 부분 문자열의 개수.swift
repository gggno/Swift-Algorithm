import Foundation

let s = readLine()!.map{String($0)}

var result: [String] = []

for i in 0..<s.count {
    var str: String = ""
    
    for j in i..<s.count {
        str += s[j]
        result.append(str)
    }
}

print(Set(result).count)