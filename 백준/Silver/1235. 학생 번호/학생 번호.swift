import Foundation

let n = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<n {
    arr.append(readLine()!)
}

for i in 0...arr[0].count {
    var set = Set<String>()
    let start = arr[0].index(arr[0].endIndex, offsetBy: -i)
    
    for j in 0..<n {
        set.insert(String(arr[j][start...]))
    }
    
    if set.count == n {
        print(i)
        break
    }
}