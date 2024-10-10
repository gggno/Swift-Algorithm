import Foundation

let t = Int(readLine()!)!
var result: [String] = []

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    var arr = readLine()!.split(separator: " ").map{String($0)}
    
    var temp: [String] = [arr[0]]
    
    for i in 1..<arr.count {
        if temp.first! < arr[i] {
            temp.append(arr[i])
        } else {
            temp.insert(arr[i], at: 0)
        }
    }
    
    result.append(temp.joined(separator: ""))
}

for i in result {
    print(i)
}