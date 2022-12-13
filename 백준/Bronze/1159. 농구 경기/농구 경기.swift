import Foundation

var mapping: [Character: Int] = [:]

for i in 0..<Int(readLine()!)! {
    let str = readLine()!.first!
    
    if mapping[str] != nil {
        mapping[str]! += 1
    } else {
        mapping[str] = 1
    }
}

let list = mapping.filter { $0.value >= 5 }
                  .keys.sorted(by: <)
                  .map {String($0)}.joined(separator: "")

print(list == "" ? "PREDAJA" : list)
